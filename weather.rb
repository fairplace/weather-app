#weather app

#return all methods in yahoo weatherman 

#require 'yahoo_weatherman'

require 'weather-underground'
puts 'enter your zip code'
c = code
gets c


client = Weatherman::Client.new
response = client.lookup_by_woeid 455821

require 'yahoo_weatherman'

def get_location(location)
  client = Weatherman::Client.new
  client.lookup_by_location(location)
end
 
weather = get_location('90210')
 
today = Time.now.strftime('%w').to_i
 
weather.forecasts.each do |forecast|
 
day = forecast['date']
 
weekday = day.strftime('%w').to_i
 
if weekday == today
   dayName = 'Today'
elsif weekday == today + 1
   dayName = 'Tomorrow'
else
   dayName = day.strftime('%A')
end
 
puts dayName + ' is going to be ' + forecast['text'].downcase + ' with a low of ' + forecast['low'].to_s + ' and a high of ' + forecast['high'].to_s
 
end

case weather

when sunny
puts "  it’s 85 degrees and sunny!"

when cloudy

puts "55 degrees and crazy cloudy!"

when rainy

puts "60 degrees and crazy rainy!"

when snowy

puts "32 degrees and super snowy!"

else puts "Great day its un-predictable"
 





