class Character < ApplicationRecord
  belongs_to :user
  validates :class_type, :name, :gender , presence: true
end
