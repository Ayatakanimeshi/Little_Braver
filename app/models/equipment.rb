class Equipment < ApplicationRecord
  has_one_attached :image

  def self.create_with_image(attributes)
    equipment = Equipment.create!(attributes.except(:image_path))
    equipment.image.attach(io: File.open(attributes[:image_path]), filename: File.basename(attributes[:image_path]), content_type: 'image/png')
    equipment
  end    
end