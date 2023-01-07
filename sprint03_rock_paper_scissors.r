# Function to play the game
play_rps <- function() {
  # Prompt the user to enter their choice
  print("Enter your choice (rock, paper, scissors):")
  user_choice <- readLines("stdin", n=1)

  # Generate the computer's choice
  computer_choice <- sample(c("rock", "paper", "scissors"), 1)

  # Print the choices
  cat("You chose: ", user_choice, "\n")
  cat("The computer chose: ", computer_choice, "\n")

  # Determine the winner
  if (user_choice == computer_choice) {
    cat("It's a tie!\n")
    return(0)
  } else if (user_choice == "rock" && computer_choice == "scissors") {
    cat("You win!\n")
    return(1)  # Return 1 for a user win
  } else if (user_choice == "paper" && computer_choice == "rock") {
    cat("You win!\n")
    return(1)  # Return 1 for a user win
  } else if (user_choice == "scissors" && computer_choice == "paper") {
    cat("You win!\n")
    return(1)  # Return 1 for a user win
  } else {
    cat("The computer wins.\n")
    return(-1)  # Return -1 for a computer win
  }
}

# Initialize the scores
user_score <- 0
computer_score <- 0

# Play the game
while (TRUE) {
  result <- play_rps()  # Play a single game
  if (result == 1) {
    user_score <- user_score + 1  # Increase the user's score
  } else if (result == 0) {
    user_score <- user_score + 0 
  } else if (result == -1) {
    computer_score <- computer_score + 1  # Increase the computer's score
  }
  
  # Print the scores
  cat("User: ", user_score, "\n")
  cat("Computer: ", computer_score, "\n")
}
