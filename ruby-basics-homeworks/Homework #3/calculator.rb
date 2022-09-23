require "calculator"
include Calculator

def init
  puts "===================================="
  puts "Welcome to your favorite calculator!"
  puts "===================================="
  puts "1- SUM"
  puts "2- SUBSTRACT"
  puts "3- MULTIPLY"
  puts "4- DIVIDE"
  puts "5- PERCENT"
  puts "6- ROOTS"
  puts "7- POWERS"
  puts "8- EXIT"
  valid = false
  while valid != true
    valid = true
    print "Please enter the number of the action you wanna do: "
    option = gets.chomp
    first_number = 0
    second_number = 0

    case option
    when "1"
      printbar
      puts "- ADDITION:"
      sum(request_first_number, request_second_number)
    when "2"
      printbar
      puts "- SUBSTRACTION:"
      substract(request_first_number, request_second_number)
    when "3"
      printbar
      puts "- MULTIPLICATION:"
      multiply(request_first_number, request_second_number)
    when "4"
      printbar
      puts "- DIVISION:"
      divide(request_first_number, request_second_number)
    when "5"
      printbar
      puts "- GET A PERCENT:"
      percent
    when "6"
      printbar
      puts "- GET A ROOT:"
      root
    when "7"
      printbar
      puts "- GET A POWER:"
      power
    when "8" then goodbye
    else
      puts "Your input was invalid, please try again:)"
      valid = false
    end
  end
  alternative_menu
end

def request_first_number
  print "Please enter the first number: "
  first_number = gets.chomp.to_i
  return first_number
end

def request_second_number
  print "Please enter the second number: "
  second_number = gets.chomp.to_i
  return second_number
end

def alternative_menu
  printbar
  puts "What would you like to do know? (Enter the option's number)"
  puts "1.Go back to the main menu"
  puts "2.Exit the app"
  valid = false
  while valid != true
    valid = true
    option = gets.chomp
    case option
    when "1" then init
    when "2" then goodbye
    else
      print "Oops! I could not understand it, please try again: "
      valid = false
    end
  end
end

def printbar
  puts "- - - - - - - - - - - - - - - - - - - -"
end

def goodbye
  puts "Finishing execution..."
  puts "Goodbye!"
  exit
end

init
