class Character < ApplicationRecord
  belongs_to :user
  has_many :equipment

  validates :class_type, :name, :gender , presence: true
end
