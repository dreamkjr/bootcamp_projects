# Define a function to process the customer's order
process_order <- function(size, toppings) {
  # Print the size and toppings of the pizza
  message <- paste("Your order has been placed for a", size, "pizza with", toppings, "toppings.")
  print(message)
}

# Define a function to handle customer input
customer_input <- function() {
  # Prompt the customer for the size of the pizza
  print("What size pizza would you like? (small/medium/large)")
  size <- readLines("stdin", n=1)
  
  # Prompt the customer for the toppings of the pizza
  print("What toppings would you like on your pizza?")
  toppings <- readLines("stdin", n=1)
  
  # Process the order
  process_order(size, toppings)
}

# Start the chatbot
print("Welcome to the pizza ordering chatbot!")
customer_input()
