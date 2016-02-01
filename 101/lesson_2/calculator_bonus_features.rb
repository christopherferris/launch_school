require 'yaml'
LANGUAGE = 'en'
MESSAGES = YAML.load_file('calculator_messages.yml')
def prompt(message)
  Kernel.puts("=> #{message}")
end

def messages(message, lang = 'en')
  MESSAGES[lang][message]
end

def valid_number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def operation_to_message(op)
  word = case op
         when '1'
           'Adding'
         when '2'
           'Subtracting'
         when '3'
           'Multiplying'
         when '4'
           'Dividing'
         end
  word
end

def operation_to_message_es(op)
  word = case op
         when '1'
           'Adición'
         when '2'
           'Restando'
         when '3'
           'Multiplicando'
         when '4'
           'Divisor'
         end
  word
end

prompt(messages('welcome', LANGUAGE))
name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end
if LANGUAGE == 'en'
  prompt("Hi #{name}!")
else
  prompt("Hola #{name}!")
end

loop do # main loop
  number1 = ''
  loop do
    prompt(messages('ask_first_number', LANGUAGE))
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  number2 = ''
  loop do
    prompt(messages('ask_second_number', LANGUAGE))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  if integer?(number1)
    number1 = number1.to_i
  else
    number1 = number1.to_f
  end
  if integer?(number2)
    number2 = number2.to_i
  else
    number2 = number2.to_f
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  operator_prompt_es = <<-MSG
    ¿Qué operación desea realizar ?
    1) añadir
    2) sustraer
    3) multiplicar
    4) dividir
  MSG
  if LANGUAGE == 'en'
    prompt(operator_prompt)
  else
    prompt(operator_prompt_es)
  end

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('valid_operator', LANGUAGE))
    end
  end

  if LANGUAGE == 'en'
    prompt("#{operation_to_message(operator)} the two numbers...")
  else
    prompt("#{operation_to_message_es(operator)} los dos números...")
  end

  result = case operator
           when '1'
             number1 + number2
           when '2'
             number1 - number2
           when '3'
             number1 * number2
           when '4'
             number1 / number2
           end

  if LANGUAGE == 'en'
    prompt("The result is #{result}")
  else
    prompt("El resultado es #{result}")
  end

  prompt(messages('calculate_again', LANGUAGE))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages('end_message', LANGUAGE))
