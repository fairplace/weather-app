



require 'weather-underground'
puts 'enter your zip code'
c = code
gets c


client = Weatherman::Client.new
response = client.lookup_by_woeid 455821

response.location['city'] # => "Belo Horizonte"
response.location['country'] # => "Great_Britain"
response.condition['date'] # => #<Date: -1/2,0,2299161>

ptbr_client = Weatherman::Client.new :lang # => 'pt-br'
response = ptbr_client.lookup_by_woeid 455821

response.condition['text'] # => "Parcialmente Nublado"
response.condition['country'] # => "Great_Britain"

client = Weatherman::Client.new

client.lookup_by_location('66061').condition['temp']
client.lookup_by_location('olathe, ks').condition['temp']
client.lookup_by_location('north pole').condition['temp']
client.lookup_by_location('sydney opera house').condition['temp']

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