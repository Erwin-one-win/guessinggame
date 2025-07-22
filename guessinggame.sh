actual=$(ls -1 | wc -l)

function ask_guess{ 
echo "Please enter the number of files you guess" 
read response
}

ask_guess
echo "You guessed number is:$response"


while [[ $response -ne $actual  ]]
do
     if [[ $response -lt $actual  ]]
     then
         echo "Low.Try again "
     elif [[ $response -gt $actual  ]]
     then
         echo "High.Try again "
      fi

       ask_guess
done

echo "Thanks for entering $response. Congratulate,this is right .End program"

