require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

name = 'baz'
template = ERB.new "oh give it a rest <%= name.upcase %>"
puts template.result(binding)

puts "comprende?"
answer = gets.chomp
sentence = ERB.new "you said <%= answer %>"
puts sentence.result(binding)

puts "are you sure?"
answer2 = gets.chomp

if answer2 == "yes"
  puts "good. im starting to like you"
else
  puts "ok. just don't mess with me"
end
