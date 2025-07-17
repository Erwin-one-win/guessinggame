README.md: guessinggame.sh
	echo "## guessinggame" > README.md
	echo "" >> README.md
	echo "本项目是一个 Bash 猜数字小游戏。" >> README.md
	echo "" >> README.md
	echo "### 运行 make 的时间：" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "### guessinggame.sh 的代码行数：" >> README.md
	wc -l < guessinggame.sh >> README.md
