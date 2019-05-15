all: README.md

README.md: guessinggame.sh makefile
	@echo "Vloer's guessing game" > README.md
	@echo "" >> README.md
	@echo "Make script ran on:" >> README.md
	@date '+%F, %T' >> README.md
	@echo "" >> README.md
	@echo "The script 'guessinggame.sh' contains this many lines of code:" >> README.md
	@cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
