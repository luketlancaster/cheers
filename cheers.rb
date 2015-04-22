require 'date'

def ask_for_name
  puts "Hello, what's your name?!"
  gets.chomp.upcase
end

def ask_for_birthday
  puts "And what's your birthday [mm/dd]"
  gets.chomp
end

name = ""
birthday = ""

while name.empty?
  name = ask_for_name
end

while birthday.empty?
  birthday = ask_for_birthday
end

name.gsub!(/[^\w]/, "")
an_letters = "AEFHILMNORSX"
name.each_char do |letter|
  article = an_letters.include?(letter) ? "an" : "a"
  puts "Give me #{article}...#{letter}!"
end

now_date = Time.now
birthday = Date.parse(birthday)
current_date = now_date.month.to_s << '/' << now_date.day.to_s
today = Date.parse(current_date)

puts name.upcase.rstrip + "'s just GRAND!"


if (birthday - today) < 0
  days_away = (birthday - today).to_s.sub(/-/, '').to_i
  puts "\nAwesome! Your birthday was #{days_away} days ago! Happy belated birthday!"
elsif (birthday - today) > 0
  days_away = (birthday - today).to_i
  puts "\nAwesome! Your birthday is in #{days_away} days! Happy Birthday in advance!"
end
