# ask the user fot 2 numbers
# ask the user for an operatoin to perform
# perform the operation on the 2 numbers
# outpur the results

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# puts MESSAGES.inspect

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num
end

def valid_f?(float)
  float.to_f.to_s == float
end

def operation_to_message(op)
  case op
  when '1'
    return 'Adding'
  when '2'
    return 'Subtracting'
  when '3'
    return 'Multiplying'
  when '4'
    return 'Dividing'
    a = 'random'
  end
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp
  if name.empty?
prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # Main Loop
  number1 = ''

  loop do
    prompt(MESSAGES['number1'])
    number1 = gets.chomp
    if valid_number?(number1) || valid_f?(number1)
      break
    else
      prompt(MESSAGES['valid_number1'])
    end
  end

  number2 = ''

  loop do
    prompt(MESSAGES['number2'])
    number2 = gets.chomp
    if valid_number?(number2) || valid_f?(number2)
      break
    else
      prompt(MESSAGES['valid_number2'])
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  prompt(operator_prompt)
  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['valid_op'])
    end
  end

  prompt "#{operation_to_message(operator)} the two numbers..."

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt "Your result is: #{result}."
  
  prompt(MESSAGES['redo'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Hey #{name}, Thank you for choosing StackTrase calulator, Good bye!"
