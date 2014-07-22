BIN=safeunits

FLAGS=-O2 -Wall -fwarn-tabs --make -fforce-recomp -o $(BIN) -main-is SafeUnits

all: test

test: $(BIN)
	./$(BIN)

$(BIN): SafeUnits.hs
	ghc $(FLAGS) SafeUnits.hs

hlint:
	hlint .

lint: hlint

guard:
	bundle exec guard

clean:
	-rm $(BIN)
	-rm *.exe
	-rm *.o
	-rm *.hi
