default:
	cabal build

dependencies:
	git submodule init
	git submodule update
	cabal sandbox init
	cabal install vendor/aeson
	cabal install --only-dep -j

test:
	cabal test --show-details=always --test-option=--color
