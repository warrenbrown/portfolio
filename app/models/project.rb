class Project < ApplicationRecord
  validates :title, :description, :link, presence: true
  validates :description, length: { minimum: 10 }
end
