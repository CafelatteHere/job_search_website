class Vacancy < ApplicationRecord
  validates :position, presence: true
  validates :company, presence: true
  validates :location, presence: true
  validates :salary, presence: true
  validates :description, presence: true

  belongs_to :user

  def self.search(search)
    if search != ""
      Vacancy.where('description LIKE(?)', "%#{search}%") || Vacancy.where('position LIKE(?)', "%#{search}%") 
    else
      Vacancy.all
    end
  end
end
