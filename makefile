all: readme.md

readme.md: guessinggame.sh makefile
	@echo "Vloer's guessing game" > readme.md
	@echo "Make script ran on:" >> readme.md
	@date '+%F, %T' >> readme.md
	@echo "The script 'guessinggame.sh' contains this many lines of code:" >> readme.md
	@cat guessinggame.sh | wc -l >> readme.md

clean:
	rm readme.md
