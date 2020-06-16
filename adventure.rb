require_relative './app/models'

puts "Please enter your Username:"

# method to create username or continue based on gets.chomp

# if new game: puts opening text, if continue: puts text from story_id in User_id

# when user makes a choice, update user table with new story_id

# method to call role_id based on choices to update correct story_id column

# method for linking choices back to the story primary id


class Game

def new_user(input)
username = gets.chomp()



current_user = User.create({ name: username }) 



end


end