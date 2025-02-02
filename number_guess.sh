#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( ( RANDOM % 1000 )  + 1 ))
echo $SECRET_NUMBER
GUESSES=0

# Prompt the user for their username
echo -e "Enter your username:"
read NAME

# Check if the user exists in the database
USERNAME=$($PSQL "SELECT username FROM users WHERE username='$NAME'")

if [[ -z $USERNAME ]]; then
  # If the user doesn't exist, insert them into the database
  USERNAME=$NAME
  BEST_GAME=1000
  echo $($PSQL "INSERT INTO users(username, games_played, best_game) VALUES ('$USERNAME', 1, 1000)")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  # If the user exists, fetch their game data
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

  # Increment games played and update the database
  ((GAMES_PLAYED++))
  echo $($PSQL "UPDATE users SET games_played=$GAMES_PLAYED WHERE username='$USERNAME'")
fi

# Start the guessing game
echo -e "Guess the secret number between 1 and 1000:"

while true; do
  read GUESS
  ((GUESSES++))

  # Check if the input is a valid integer
  if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
    echo -e "That is not an integer, guess again:"
  else
    # Check if the guess is too low, too high, or correct
    if [[ $GUESS -lt $SECRET_NUMBER ]]; then
      echo -e "It's higher than that, guess again:"
    elif [[ $GUESS -gt $SECRET_NUMBER ]]; then
      echo -e "It's lower than that, guess again:"
    else
      # If the user guesses correctly, update the best game if necessary
      if [[ $GUESSES -lt $BEST_GAME ]]; then
        echo $($PSQL "UPDATE users SET best_game=$GUESSES WHERE username='$USERNAME'")
      fi

      # Print the success message and exit
      echo "You guessed it in $GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
      exit
    fi
  fi
done
