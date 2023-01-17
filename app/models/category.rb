class Category < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :purchases, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true
end