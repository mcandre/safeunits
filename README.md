# safeunits - Because a USD $125,000,000 NASA Mars Climate Orbiter is worth it

# EXAMPLE

```
$ make
ghc -O2 -Wall -fwarn-tabs --make -fforce-recomp -o safeunits -main-is SafeUnits SafeUnits.hs
[1 of 1] Compiling SafeUnits        ( SafeUnits.hs, SafeUnits.o )
Linking safeunits ...
./safeunits
1.0 cm = 2.54 in
1.0 cm of capacitance = 1.113e-12 Farad
2.54 in of capacitance = 1.1130000000000004e-12 Farad
```

# HOMEPAGE

[http://tinyurl.com/marsclimateorbiter](http://tinyurl.com/marsclimateorbiter)

# REQUIREMENTS

* [Haskell](http://www.haskell.org)

## Optional

* [Ruby](http://www.ruby-lang.org) 1.9+
* [Guard](http://guardgem.org/) 1.8.2+
* [aspelllint](https://github.com/mcandre/aspelllint)

Install Guard and aspelllint:

    $ bundle

# DEVELOPMENT

## Lint

Keep the code tidy:

    $ make lint

## Spell Check

    $ aspelllint
    ...

## Local CI

Start Guard in a shell, and it will automatically run unit tests when the source code changes:

    $ guard
    ...
