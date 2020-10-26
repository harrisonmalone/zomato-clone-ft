puts "starting seed 🌱"

tipo = Restaurant.create(
  name: "Tipo 00",
  opening_hours: "11.30AM - 10PM",
  rating: nil,
  contact_number: "+61399423946",
  cuisine: "Italian",
  cost_for_2: "150"
)
\
tipo_address = Address.create(
  street: "361 Little Bourke St",
  suburb: "Melbourne",
  postcode: "3000",
  state: "Victoria",
  country: "Australia",
  restaurant_id: tipo.id
)

tipo_review_1 = Review.create(
  description: "Love this place!",
  stars: 4,
  restaurant_id: tipo.id
)

tipo_review_2 = Review.create(
  description: "Great vibe!",
  stars: 5,
  restaurant_id: tipo.id
)

puts "finished seed ✅"

# tipo_stars = tipo.reviews.pluck(:stars)
# tipo_rating = tipo_stars.sum.to_f / tipo_stars.length
# tipo.rating = tipo_rating
# tipo.save

# dodee = Restaurant.create(
#   name: "Dodee Paidang",
#   opening_hours: "11.30AM - 3PM",
#   rating: nil,
#   contact_number: "+61396024968",
#   cuisine: "Thai",
#   cost_for_two: "75"
# )

# dodee_address = Address.create(
#   street: "Basement/353 Little Collins St",
#   suburb: "Melbourne",
#   postcode: "3000",
#   state: "Victoria",
#   country: "Australia",
#   restaurant_id: dodee.id
# )

# dodee_review_1 = Review.create(
#   description: "Love this place heaps!",
#   stars: 5,
#   restaurant_id: dodee.id,
#   user_id: user.id
# )

# dodee_review_2 = Review.create(
#   description: "Cool spot",
#   stars: 4,
#   restaurant_id: dodee.id,
#   user_id: user.id
# )

# dodee_stars = dodee.reviews.pluck(:stars)
# dodee_rating = dodee_stars.sum.to_f / dodee_stars.length
# dodee.rating = dodee_rating
# dodee.save

# bakemono = Restaurant.create(
#   name: "Bakemono Bakers",
#   opening_hours: "7AM - 6PM",
#   rating: nil,
#   contact_number: Faker::PhoneNumber.cell_phone,
#   cuisine: "Bakery",
#   cost_for_two: "30"
# )

# bakemono_address = Address.create(
#   street: "Little Lonsdale St",
#   suburb: "Melbourne",
#   postcode: "3000",
#   state: "Victoria",
#   country: "Australia",
#   restaurant_id: bakemono.id
# )

# bakemono_review_1 = Review.create(
#   description: "Love this place a lot!",
#   stars: 3,
#   restaurant_id: bakemono.id,
#   user_id: user.id
# )

# bakemono_review_2 = Review.create(
#   description: "Like it!",
#   stars: 4,
#   restaurant_id: bakemono.id,
#   user_id: user.id
# )

# bakemono_stars = bakemono.reviews.pluck(:stars)
# bakemono_rating = bakemono_stars.sum.to_f / bakemono_stars.length
# bakemono.rating = bakemono_rating
# bakemono.save

# hubert = Restaurant.create!(
#   name: "Restaurant Hubert",
#   opening_hours: "5pm–1am",
#   rating: nil,
#   contact_number: Faker::PhoneNumber.cell_phone,
#   cuisine: "French",
#   cost_for_two: "300"
# )