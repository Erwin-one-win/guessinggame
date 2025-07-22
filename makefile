.PHONY: guess

guess:
	@actual=$$(ls -1 | wc -l); \
	response=""; \
	while [ "$$response" != "$$actual" ]; do \
		echo "Please enter the number of files you guess:"; \
		read response; \
		echo "You guessed number is: $$response"; \
		if [ "$$response" -lt "$$actual" ]; then \
			echo "Low. Try again"; \
		elif [ "$$response" -gt "$$actual" ]; then \
			echo "High. Try again"; \
		fi; \
	done; \
	echo "Thanks for entering $$response. Congratulate, this is right. End program."

README.md: guessinggame.sh Makefile
	@echo "# guessinggame" > README.md
	@echo "" >> README.md
	@echo "Generation date and time：" $$(date) >> README.md
	@echo "" >> README.md
	@echo "guessinggame.sh Number of lines of script code：" $$(wc -l < guessinggame.sh) >> README.md

readme: README.md
