class Food < ApplicationRecord
    has_one :parameter, dependent: :destroy
end
