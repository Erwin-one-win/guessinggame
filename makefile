README.md: guessinggame.sh
	echo "## 猜文件游戏 Guessing Game" > README.md
	echo "" >> README.md
	echo "生成日期：$$(date)" >> README.md
	echo "" >> README.md
	echo "guessinggame.sh 脚本包含 $$(grep -v '^\s*$$' guessinggame.sh | wc -l) 行有效代码。" >> README.md
