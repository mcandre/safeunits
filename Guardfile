guard :shell do
  watch("Gemfile") do |m|
    title = "Bundler output"
    msg = "Bundler Failure"
    status = :failed

    if system("bundle")
      msg = "Bundled"
      status = :status
    end

    n msg, title, status

    "-> #{msg}"
  end

  watch(/(.+)\.hs/) do |m|
    title = "Test output"
    status = :success

    output = `runhaskell #{m[1]}`

    msg = output

    n msg, title, status

    "-> #{msg}"
  end
end
