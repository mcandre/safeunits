all: test

test: safeunits.hs
	runhaskell safeunits.hs

lint:
	hlint .

guard:
	bundle exec guard
