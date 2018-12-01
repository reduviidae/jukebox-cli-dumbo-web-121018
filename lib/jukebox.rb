require "pry"

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

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end


def list(songs)
  songs.each.with_index(1) do |song, index|
   puts "#{index}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  song_number = 99
  song_name = ""
  if response.length == 1
    song_number = response.to_i
  end
  songs.each.with_index(1) do |song, index|
    if response == song
      song_name = song
    end
    # binding.pry
    if song_name == song || song_number == index
      puts "Playing #{song}"
    else 
      return puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  help
  command = gets.strip
  if command != "exit"
    if command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "help"
      help
    end
  else 
    exit_jukebox
  end
end

# play(songs)
