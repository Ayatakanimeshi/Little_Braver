class Food < ApplicationRecord
    has_one_attached :image

    def self.create_with_image(attributes)
        food = Food.create!(attributes.except(:image_path))
        food.image.attach(io: File.open(attributes[:image_path]), filename: File.basename(attributes[:image_path]), content_type: 'image/png')
        food
      end    
end
