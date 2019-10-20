#/usr/bin/env bash

all: README.md

README.md: courseraguessinggame.sh
	touch README.md
	echo "# courseraguessinggame" > README.md
	echo $$(date) >> README.md
	echo "  \n" >> README.md
	wc -l courseraguessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
