CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}
puts "Welcome to my version Rock, Paper, Scissors!"
puts "In this game, only use the first letter of your choice"
puts "For example: If you choose Rock, only use the letter r"

def display_winning_msg(winning_choice)
  case winning_choice
  when 'p'
    puts "Paper covers Rock!"
  when 'r'
    puts "Rock crushes Scissors!"
  when 's'
    puts "Scissors cut Paper!"
  end
end

loop do

  begin
    puts "Pick one: R, P or S:"
    players_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(players_choice)

  computer_choice = CHOICES.keys.sample

  if players_choice == computer_choice
    puts "It's a Tie!"
  elsif (players_choice == 'p' && computer_choice == 'r') || (players_choice == 'r' && computer_choice == 's') || (players_choice == 's' && computer_choice == 'p')
    puts "You won!"
    display_winning_msg(players_choice)
  else
    puts "Computer Wins!"
    display_winning_msg(computer_choice)
  end
  puts "Play again? Choose y or n"
  break unless gets.chomp.downcase == 'y'

end

puts "Thanks for playing, buh bye!"
