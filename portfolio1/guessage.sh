#Georgia Francisco - 10424443

#! /bin/bash

#Define the variables
 
guess=-1
typeset -i num=0

#Introduce the game

echo -e "AGE GUESSING GAME\n"

#Generate a random number(age)

((answer = RANDOM % 99))

#Providing a user input and ask user to provide input
#Giving indication whether the input is too high or low

while ((guess != answer)); do
      num=num+1
      read -p "Guess an AGE (HINT: It's below 99 ;) ):" guess
      if ((guess < answer)); then
         echo "Higher!"
      elif ((guess > answer)); then
         echo "Lower!"
      fi 
done

#Print a message to user if they have guessed the age correctly

echo -e "CORRECT! YOU GUESSED THE AGE!!"
