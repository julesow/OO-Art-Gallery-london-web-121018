class Artist

  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end



def paintings
  #   * Returns an `array` all the paintings by an artist
  Painting.all.select{|painting| painting.artist == self}
end
def galleries
  #   * Returns an `array` of all the galleries that an artist has paintings in
  paintings.map{|painting| painting.gallery}
end
def cities
  #   * Return an `array` of all cities that an artist has paintings in
  galleries.map{|painting| painting.city}
end
def self.total_experience
  #   * Returns an `integer` that is the total years of experience of all artists
  Artist.all.map{|artist| artist.years_experience}.inject(:+)
end
def self.most_prolific
  #   * Returns an `instance` of the artist with
  # the highest amount of paintings
  # per year of experience.
  # paintings.sort_by{|painting| painting.price}.last
  Artist.all.sort_by{|a| a.years_experience}.last
end
def create_painting(title, price,gallery)
  #   * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
      Painting.new(title, price,self,gallery)
end
end
