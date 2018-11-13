class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }

  def self.top
    where(stars: 5)
  end
end
