#!/home/ant/.rbenv/shims/ruby
require 'bundler'
Bundler.require

Shoes.app do
  button ( "play" ) 
  button ( "stop" ) do
    fork do
      exec ("/usr/bin/pkill '/usr/bin/mplayer'")
    end
      end
  para "Choose a song:"
  list_box( {items: [ "Jay-Z/Blueprint/11 All I Need", "Jay-Z/Blueprint/02 Takeover" ]}) do |list|
  fork do 
     exec ("/usr/bin/mplayer '/home/ant/Music/#{list.text}.mp3'")
   end
  end 
end

# This method of the 'Dir' class allows to change directories.
# In the future I'll allow for user input of songs and albums 
#Dir.chdir ("/home/ant/Music/")
#puts Dir.pwd
#Dir['/home/ant/Music/*/'].map { |m| File.basename(m) }
# how to get mplayer to take a string
