class Category < ApplicationRecord
  has_many :meal, dependent: :destroy
end