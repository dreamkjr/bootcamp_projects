# chatbot (rule-based)
# ordering pizza

print("Welcome to our app!")
print("Hello There!")

# question 01
print("What's your name? ")
user_name = readLines("stdin", n=1) ## n=1 : รับ input 1 บรรทัด
print(paste("Hi", user_name))

# question 02
print("What do you want to order today?")
print("1.pizza, 2.spaghetti")
action = readLines("stdin", n=1)
print("Do you want to add your order?")
ask = readLines("stdin", n=1)
if( ask == "Yes"){
  print("What menu do you want to add to your order?")
  action2 = readLines("stdin", n=1)
  print("You ordered pizza and spaghetti.")
  print("What pizza do you want to order?")
  print("1.Seafood, 2.Meat Deluxe, 3.Hawaiian")
  pizza = readLines("stdin", n=1)
  print("What spaghetti do you want to order?")
  print("1.Bolognese, 2.Carbonara")
  spaghetti = readLines("stdin", n=1)
} else {
  if(action ==1) {
    print("You ordered pizza.")
  } else {
    print("You ordered spaghetti.")
  }
}
