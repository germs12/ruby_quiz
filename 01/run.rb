input = 'code in ruby live longer you D bag'
count = 0
output = ''

look_up = {}
('A'..'Z').to_a.each_with_index do |letter, index|
  look_up[letter] = index + 1
end

input.gsub(/(\W|\d)/, '').upcase.each_char do |char|
  if count < 5
    output << char
  else
    count = 0
    output << ' ' + char
  end
  count += 1
end

while count < 5 do 
  output << 'X'
  count += 1
end

puts output

output.each_char do |letter|
  print look_up[letter].to_s + ' '
end
puts ''