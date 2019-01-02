class Painting

  @@all = []

  attr_reader :title, :price
  attr_accessor:artist,:gallery

  @@all = []

  def initialize(title, price,artist,gallery)
    @title = title
    @price = price
    @artist,@gallery = artist,gallery
        @@all << self
  end
  def self.all
    @@all
  end

  def self.total_price
    # * Returns an `integer` that is the total price
     # of all paintings

     Painting.all.map{ |e| e.price }.inject(:+)

  end
end
