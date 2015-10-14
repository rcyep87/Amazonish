100.times do
  Item.create({
      name: Faker::Book.title,
      description: Faker::Lorem.paragraph(5),
      price: rand(100),
      quantity: rand(1000)
    })
end
