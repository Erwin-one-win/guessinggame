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
	echo "Thanks for entering $$response. Congratulations, this is right. End program."
