locations = ["New York", "Chicago", "Florida", "California"]
coaches = [["Kevin", 3, 1],["Z", 2, 1],["Nico", 4, 1],["Chris", 4, 1],
           ["Pedro", 4, 2],["Javier", 3, 2],["Jose", 3, 2],["Nicol", 4, 2],
           ["Samantha", 4, 3],["Tivoli", 2, 3],["Maria", 2, 3],["Roxane", 3, 3],
           ["Kevin", 4, 4],["Kevin", 2, 4],["Kevin", 2, 4],["Kevin", 1, 4]]

locations.each do |locate|
  Location.create(name: locate)
end

coaches.each do |coach|
  Coach.create(name: coach[0], level: coach[1], location_id: coach[2])
end
