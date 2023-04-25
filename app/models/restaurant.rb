class Restaurant < ApplicationRecord
    has_many :dishes
    has_many :reviews, as: :reviewable
    validates :title, presence: true
    validates_associated :dishes
  
    accepts_nested_attributes_for :dishes
end
