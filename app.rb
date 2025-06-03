def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def divide(a, b)
  return "Cannot divide by zero!" if b == 0
  a.to_f / b
end

def power(a, b)
  a ** b
end

def mod(a, b)
  a % b
end

def select_operation(command, a, b)
  case command
  when '+' then add(a, b)
  when '-' then subtract(a, b)
  when '*' then multiply(a, b)
  when '/' then divide(a, b)
  when '^' then power(a, b)
  when '%' then mod(a, b)
  else "Invalid operation!"
  end
end

puts "📟 Ruby Calculator"
puts "Available operations: + - * / ^ (power) % (modulo)"

loop do
  print "\nFirst number: "
  x = gets.chomp
  break if x.downcase == "exit"

  print "Second number: "
  y = gets.chomp
  break if y.downcase == "exit"

  print "Choose operation (+, -, *, /, ^, %): "
  operation = gets.chomp

  begin
    x = Float(x)
    y = Float(y)
    result = select_operation(operation, x, y)
    puts "Result: #{result}"
  rescue
    puts "Please enter valid numbers."
  end

  print "Do you want to continue? (y/n): "
  continue = gets.chomp.downcase
  break if continue != "y"
end

puts "👋 See you next time!"
