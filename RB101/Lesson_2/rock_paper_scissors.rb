VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

def prompt(message)
  puts "=> #{message}"
end

def players_choice(user_input)
  if user_input.start_with?('r')
    'rock'
  elsif user_input.start_with?('p')
    'paper'
  elsif user_input.start_with?('sc')
    'scissors'
  elsif user_input.start_with?('l')
    'lizard'
  elsif user_input.start_with?('sp')
    'spock'
  end
end

moves = { rock: ['scissors', 'lizard'],
          paper: ['rock', 'spock'],
          scissors: ['paper', 'lizard'],
          lizard: ['paper', 'spock'],
          spock: ['scissors', 'rock'] }

def win?(hash, first, second)
  hash[first.to_sym].include?(second)
end

def display_result(array, player, computer)
  if win?(array, player, computer)
    "player"
  elsif win?(array, computer, player)
    "computer"
  else
    prompt "It's a tie!"
  end
end

player_score = 0
computer_score = 0

loop do
  loop do
    choice = ''
    input = ''
    loop do
      prompt "Choose one: #{VALID_CHOICES.join(', ')}"
      input = gets.chomp.downcase
      choice = players_choice(input)

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt "That's not a valid choice."
      end
    end

    computer_choice = VALID_CHOICES.sample

    puts "Choices: You ~ #{choice}; Computer ~ #{computer_choice}."

    result = display_result(moves, choice, computer_choice)

    case result
    when "player"
      player_score += 1
    when "computer"
      computer_score += 1
    end

    puts "Your score: #{player_score}. Computers score: #{computer_score}."

    if player_score == 3
      puts "Congrats! You won!"
      break
    elsif computer_score == 3
      puts "Congrats! Looser of the year!"
      break
    end
  end

  player_score = 0
  computer_score = 0

  prompt "Would you like to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing! Good bye!"
