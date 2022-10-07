# frozen_string_literal: true

require_relative "calculator/version"

module Calculator
  class Error < StandardError; end

  # Your code goes here...
  # Sorry for now we only support two digits. We are working on the updates!
  def sum(first_number, second_number)
    puts "=> #{first_number} + #{second_number} = #{first_number + second_number}"
    #Writing an irrelevant comment, just to verify if my SSH KEY worked.
  end

  def substract(first_number, second_number)
    puts "=> #{first_number} - #{second_number} = #{first_number - second_number}"
  end

  def multiply(first_number, second_number)
    puts "=> #{first_number} x #{second_number} =  #{first_number * second_number}"
  end

  def divide(first_number, second_number)
    puts "=> #{first_number} / #{second_number} =  #{first_number / second_number}"
  end

  def power
    print "Please enter the number you want to power: "
    number = gets.chomp.to_i
    print "Please enter the power: "
    power = gets.chomp.to_i
    result = 1
    for counter in 1..power
      result = result * number
    end

    puts "=> #{number} to the power #{power} =  #{result}"
  end

  def root
    print "Please enter the number whose root you want to get: "
    number = gets.chomp.to_i
    print "Please enter the root: "
    root = gets.chomp.to_i
    result = Math.exp(Math.log(number) / root)
    puts "The root #{number} of #{root} = #{result.to_i}"
  end

  def percent
    print "Please enter the number whose percent you want to get: "
    number = gets.chomp.to_i
    print "Please enter the percent: "
    percent = gets.chomp.to_i
    result = (percent * 0.01) * number
    puts "The #{percent}% of #{number} is: #{result}"
  end
end
