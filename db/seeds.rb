# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
foods = [
  { name: "izu", rarity: 1, image_path: Rails.root.join('app/assets/images/foods/izumi1.jpeg'),atk: 100, def: 11, spd: 23, int: 22, hp: 95, mp: 90 },
  { name: "maru", rarity: 1, image_path: Rails.root.join('app/assets/images/foods/IMG_3839.png'),atk: 20, def: 13, spd: 43, int: 22, hp: 105, mp: 500 },
  { name: "kaza", rarity: 1, image_path: Rails.root.join('app/assets/images/foods/kazamagirl.png'),atk: 50, def: 41, spd: 31, int: 12, hp: 205, mp: 10 }
]

foods.each do |food_data|
    Food.create_with_image(food_data)
  end