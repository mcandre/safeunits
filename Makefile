BIN=bin/safeunits

FLAGS=-O2 -Wall -fwarn-tabs --make -fforce-recomp -o $(BIN) -main-is SafeUnits

all: test

test: $(BIN)
	$(BIN)

$(BIN): SafeUnits.hs
	mkdir -p bin/
	ghc $(FLAGS) SafeUnits.hs

hlint:
	hlint .

lili:
	bundle exec lili .

lint: hlint lili

guard:
	bundle exec guard

clean:
	-rm -rf bin/
	-rm *.o
	-rm *.hi
