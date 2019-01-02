class Gallery

  @@all = []


  attr_accessor :name, :city

  def initialize(name, city)
    @name = name
    @city = city
        @@all << self
  end


  def self.all
    @@all
  end

  def paintings
    # * Returns an `array` of all paintings in a gallery
    Painting.all.select{|painting| painting.gallery == self}
  end
  def artists
    #   * Returns an `array` of all artists that have a painting in a gallery
    paintings.map { |painting| painting.artist  }
  end
def artist_names
  #   * Returns an `array` of the names of all artists that have a painting in a gallery
    artists.map{|artist| artist.name}
end
  def most_expensive_painting
  #   * Returns an `instance` of the most expensive painting in a gallery

    paintings.sort_by{|painting| painting.price}.last
  end

end
