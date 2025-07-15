#!/bin/bash

function ask_guess {
    echo "你猜当前目录下有多少个文件？"
    read guess
}

file_count=$(ls -1 | wc -l)

ask_guess
while [[ $guess -ne $file_count ]]
do
    if [[ $guess -lt $file_count ]]; then
        echo "太低了！再试一次："
    else
        echo "太高了！再试一次："
    fi
    ask_guess
done

echo "恭喜你猜对了！当前目录下有 $file_count 个文件。"

