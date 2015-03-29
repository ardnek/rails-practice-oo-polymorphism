class State
  attr_reader :price, :category

  def initialize(price, category)
    @price, @category = price, category
  end
end

class Alabama < State
  def tax_amount
    0
  end
end

class Colorado < State
  def tax_amount
    @category == 'food' ? @price * 0.09 : @price * 0.07
  end
end

class NewYork < State
  def tax_amount
    @price * 0.07
  end
end

class SouthCarolina
  def tax_amount
    @price * 0.13
  end
end

[
  Alabama.new(10, 'toy'),
  Alabama.new(12, 'toy'),
  Colorado.new(35, 'food'),
  Colorado.new(65, 'toy'),
  NewYork.new(98, 'food'),
  NewYork.new(2, 'toy'),
].each do |item|
  puts item.tax_amount
end
