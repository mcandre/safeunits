# safeunits - Because a USD $125,000,000 NASA Mars Climate Orbiter is worth it

# HOMEPAGE

[http://tinyurl.com/marsclimateorbiter](http://tinyurl.com/marsclimateorbiter)

# REQUIREMENTS

* [Haskell](http://www.haskell.org)

## Optional

* [Ruby](http://www.ruby-lang.org) 1.9+
* [Guard](http://guardgem.org/) 1.8.2+

Use `bundle` to install Guard.

# EXAMPLE

    $ make
    1.0 cm = 2.54 in
    1.0 cm of capacitance = 1.113e-12 Farad
    safeunits.hs: safeunits.hs:25:0-41: Non-exhaustive patterns in function capacitance

# DEVELOPMENT

## Guard

Start Guard in a shell, and it will automatically run unit tests when the source code changes:

    $ guard
        ...

## Lint

Keep the code tidy:

    $ make lint
