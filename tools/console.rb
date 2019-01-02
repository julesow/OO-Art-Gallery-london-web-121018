require_relative '../config/environment.rb'

a1= Artist.new("AA",10)
a2= Artist.new("AB",45)
a3= Artist.new("AC",20)

g1 = Gallery.new("GA","Lond")
g2 = Gallery.new("GB","Paris")
g3 = Gallery.new("GC","Bruxelles")
g4 = Gallery.new("GD","London")


# title, price,artist,gallery
p1= Painting.new("t2",120,a1,g2)
p2 = Painting.new("t3",200,a3,g4)
p3= Painting.new("t4",300,a2,g3)
p4 = Painting.new("t1",400,a1,g1)
p5 = Painting.new("t6",50,a3,g2)
p6 = Painting.new("t5",30,a2,g2)
binding.pry

puts "Bob Ross rules."
