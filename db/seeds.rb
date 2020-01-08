album_list = [
  [ "Oak", "Quercus" ],
  [ "Pine", "Pinus" ],
  [ "Sycamore", "Platanus" ],
  [ "Alder", "Alnus" ],
  [ "Birch", "Betula"],
  [ "Cherry", "Prunus"]
]

album_list.each do |album, song|
  Album.create( name: album, name: song )
end
