# Define the rooms and their points
rooms = {
  1 => { name: "Room 1", points: 5 },
  2 => { name: "Room 2", points: 10 },
  3 => { name: "Room 3", points: 15 }
}

# Initialize the player's total score
total_score = 0

# Welcome message
puts "Welcome to the Adventure Game!"
puts "You have #{total_score} points."

# Main game loop
loop do
  # Display menu
  puts "Choose a room (1-3) to enter or 'exit' to end the game:"

  # Get user input
  input = gets.chomp.downcase

  # Exit game if input is 'exit'
  break if input == 'exit'

  # Parse input as integer and check if it's a valid room number
  room_number = input.to_i
  unless rooms.key?(room_number)
    puts "Invalid input. Please enter a number from 1 to 3 or 'exit'."
    next
  end

  # Enter the selected room and update total score
  room = rooms[room_number]
  total_score += room[:points]
  puts "You entered #{room[:name]} and earned #{room[:points]} points."
end

# Game over message
puts "Game over! You collected a total of #{total_score} points."
