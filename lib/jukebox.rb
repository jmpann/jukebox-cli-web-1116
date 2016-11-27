songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

#def say_hello(name)
#  "Hi #{name}"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "-help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  request = gets.chomp
  songs.each_with_index do |song, index|
    if request == song || request.to_i == index + 1
      puts "Playing: #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def list(songs)
  songs.each_with_index {|item, index| puts "#{index+1} #{item}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(song)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  case user_input
  when "help"
    help
  when "list"
    list
  when "play"
    play
  when "exit"
    exit_jukebox
  end
end
