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

equipments = [
  { name: "Steel Armor", category: "armor", rarity: 2, image_path: Rails.root.join('app/assets/images/equipments/armor/よろい1.png'), atk: 0, def: 50, spd: -10, int: 0, hp: 100, mp: 0 },
  { name: "Metal Armor", category: "armor", rarity: 2, image_path: Rails.root.join('app/assets/images/equipments/armor/よろい2.jpeg'), atk: 0, def: 50, spd: -10, int: 0, hp: 100, mp: 0 },
  { name: "Holy Armor", category: "armor", rarity: 2, image_path: Rails.root.join('app/assets/images/equipments/armor/よろい3.jpeg'), atk: 0, def: 50, spd: -10, int: 0, hp: 100, mp: 0 },

  { name: "Golden Shield", category: "shield", rarity: 3, image_path: Rails.root.join('app/assets/images/equipments/shield/たて1.png'), atk: 0, def: 30, spd: -5, int: 0, hp: 50, mp: 0 },
  { name: "Iron Shield", category: "shield", rarity: 3, image_path: Rails.root.join('app/assets/images/equipments/shield/たて2.png'), atk: 0, def: 30, spd: -5, int: 0, hp: 50, mp: 0 },
  { name: "Blue Shield", category: "shield", rarity: 3, image_path: Rails.root.join('app/assets/images/equipments/shield/たて3.png'), atk: 0, def: 30, spd: -5, int: 0, hp: 50, mp: 0 },

  { name: "Fire Helmet", category: "helmet", rarity: 3, image_path: Rails.root.join('app/assets/images/equipments/helmet/かぶと1.png'), atk: 0, def: 30, spd: -5, int: 0, hp: 50, mp: 0 },
  { name: "Ice Helmet", category: "helmet", rarity: 3, image_path: Rails.root.join('app/assets/images/equipments/helmet/かぶと2.png'), atk: 0, def: 30, spd: -5, int: 0, hp: 50, mp: 0 },
  { name: "Born Helmet", category: "helmet", rarity: 3, image_path: Rails.root.join('app/assets/images/equipments/helmet/かぶと3.png'), atk: 0, def: 30, spd: -5, int: 0, hp: 50, mp: 0 },

  { name: "Fire Ring", category: "accessory", rarity: 3, image_path: Rails.root.join('app/assets/images/equipments/accessory/アクセ1.png'), atk: 0, def: 30, spd: -5, int: 0, hp: 50, mp: 0 },
  { name: "Ice Neckless", category: "accessory", rarity: 3, image_path: Rails.root.join('app/assets/images/equipments/accessory/アクセ2.png'), atk: 0, def: 30, spd: -5, int: 0, hp: 50, mp: 0 },
  { name: "Born eyes", category: "accessory", rarity: 3, image_path: Rails.root.join('app/assets/images/equipments/accessory/アクセ3.png'), atk: 0, def: 30, spd: -5, int: 0, hp: 50, mp: 0 },

  { name: "Fire Sword", category: "weapon", rarity: 3, image_path: Rails.root.join('app/assets/images/equipments/weapon/けん1.png'), atk: 0, def: 30, spd: -5, int: 0, hp: 50, mp: 0 },
  { name: "Ice Blade", category: "weapon", rarity: 3, image_path: Rails.root.join('app/assets/images/equipments/weapon/けん2.png'), atk: 0, def: 30, spd: -5, int: 0, hp: 50, mp: 0 },
  { name: "Born Nife", category: "weapon", rarity: 3, image_path: Rails.root.join('app/assets/images/equipments/weapon/けん3.png'), atk: 0, def: 30, spd: -5, int: 0, hp: 50, mp: 0 }

]

foods.each do |food_data|
    Food.create_with_image(food_data)
  end

equipments.each do |equipment_data|
  Equipment.create_with_image(equipment_data)
end