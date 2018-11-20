import Development.Shake
import Development.Shake.FilePath
import System.Directory as Dir

main :: IO ()
main = do
    let tarball = "dist/safeunits-0.0.3.tar.gz"
    homeDir <- Dir.getHomeDirectory

    shakeArgs shakeOptions{ shakeFiles="dist" } $ do
        want ["dist/bin/safeunits" <.> exe]

        "dist/bin/safeunits" <.> exe %> \out ->
            cmd_ "cabal" "install" "--bindir" "dist/bin"

        phony "hlint" $
            cmd_ "hlint" "."

        phony "lint" $
            need ["hlint"]

        phony "test" $ do
            need ["dist/bin/safeunits" <.> exe]
            cmd_ ("dist/bin/safeunits" <.> exe)

        phony "install" $
            cmd_ "cabal" "install"

        phony "uninstall" $ do
            cmd_ "ghc-pkg" "unregister" "--force" "safeunits"
            removeFilesAfter homeDir ["/.cabal/bin/safeunits" <.> exe]

        phony "build" $
            cmd_ "cabal" "build"

        phony "haddock" $
            cmd_ "cabal" "haddock"

        tarball %> \_ -> do
            need ["build", "haddock"]
            cmd_ "cabal" "sdist"

        phony "sdist" $
            need [tarball]

        phony "publish" $ do
            need ["sdist"]
            cmd_ "cabal" "upload" tarball

        phony "clean" $
            cmd_ "cabal" "clean"
