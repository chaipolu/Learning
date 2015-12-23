print "please enter some text :"
user_input = gets.chomp
user_input.downcase!
if user_input.include? "s"
    user_input.gsub!(/s/, "th")
puts" you entered : #{user_input}"
puts "The string contains an s"
else
puts" you entered : #{user_input}"
end
