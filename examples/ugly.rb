[
  ['Alabama', 10, 'toy'],
  ['Alabama', 10, 'toy'],
  ['Colorado', 10, 'food'],
  ['Colorado', 10, 'toy'],
  ['New York', 10, 'food'],
  ['New York', 10, 'toy'],
  ['South Carolina', 10, 'toy'],
].each do |state, price, category|
  if state == 'Alabama'
    puts 0
  elsif state == 'Colorado'
    puts category == 'food' ? price * 0.09 : price * 0.07
  elsif state == 'New York'
    puts price * 0.07
  else
    puts price * 0.13
  end
end
