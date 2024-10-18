class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy # orphan models

  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end
