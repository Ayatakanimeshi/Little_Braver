class Equipment < ApplicationRecord
  belongs_to :braver
  has_one :parameter, dependent: :destroy
end
