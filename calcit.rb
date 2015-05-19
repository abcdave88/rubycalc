def addition(num1, num2)
  puts num1 + num2
end

def subtraction(num1, num2)
  puts num1 - num2
end

def multiply(num1, num2)
  puts num1 * num2
end

def division(num1, num2)
  puts num1 / num2
end

def power_of(num1, num2)
  puts num1 ** num2
end

def square_root(num1)
  puts   Math.sqrt(num1)
end

def calc(operator, number1, number2)
  case operator
    when '+'
      addition(number1, number2)
    when '-'
      subtraction(number1, number2)
    when '*'
      multiply(number1, number2)
    when '/'
      division(number1, number2)
    when '**'
      power_of(number1, number2)
    else
      puts"operator not recognised, try again"
      gets.chomp
    end
  menu
end

def ad_calc(num1)
  square_root(num1)
  menu
end

def bmi_calc(weight, height)
  bmi = ((weight / height) /height).round(2)
  puts"your bmi is #{bmi}"
  menu
end

def trip_calc(distance, mpg, cost, speed)
  time = (distance / speed).round(2) 
  if mpg > 60
    actual_mpg = mpg - (speed - 60) * 2
  else 
    actual_mpg = mpg
  end
  trip_cost = ((distance / actual_mpg) * cost).round(2)
  puts"your trip will £#{trip_cost} and take #{time} hours"
  menu
end
###//mortgage calc not working\\###
def mortgage_calc(loan_amount, interest_rate, loan_length)
  mortgage = (loan_amount * ((interest_rate * ((1 + interest_rate) **loan_length)) / (((1+interest_rate)**loan_length
    )-1))).round(2)
  puts"your mortage payments are #{mortgage}"
  menu
end  

def menu 
  print"Do you want to use (b)asic/(a)dvanced/bmi/(t)rip/(m)ortgage calculator or (q)uit?"
  calc_choice = gets.chomp
    if calc_choice == 'b'
      print"Select first number"
      number1 = gets.chomp.to_i
      print"Select mathematical operator"
      operator = gets.chomp
      print"Select second number"
      number2 = gets.chomp.to_i
      calc(operator, number1, number2)
    elsif calc_choice == 'a'
      print"Select number for square root"
      number1 = gets.chomp.to_i
      ad_calc(number1)
    elsif calc_choice == 'bmi'
      print"Enter your weight in kilograms."
      weight = gets.chomp.to_i
      print"Enter your height in metres."
      height = gets.chomp.to_f
      bmi_calc(weight, height)
    elsif calc_choice == 't'
      print"Enter trip distance"
      distance = gets.chomp.to_i
      print"Enter MPG"
      mpg = gets.chomp.to_i
      print"Enter fuel cost per gallon"
      cost = gets.chomp.to_i
      print"Enter average speed"
      speed = gets.chomp.to_i
      trip_calc(distance, mpg, cost, speed)
    elsif calc_choice == 'm'
      print"Enter loan amount"
      loan_amount = gets.chomp.to_i
      print"Enter loan length"
      loan_length = gets.chomp.to_i
      print"Enter interest rate"
      interest_rate = gets.chomp.to_f
      mortgage_calc(loan_amount, loan_length, interest_rate)
    end 
end


menu




 
