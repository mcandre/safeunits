# safeunits - Because a USD $125,000,000 NASA Mars Climate Orbiter is worth it

# EXAMPLE

    $ make
    1.0 cm = 2.54 in
    1.0 cm of capacitance = 1.113e-12 Farad
    safeunits.hs: safeunits.hs:25:0-41: Non-exhaustive patterns in function capacitance

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
