class Project < ApplicationRecord
  validates :title, :description, :link, presence: true
  validates :description, length: { minimum: 10 }

  extend FriendlyId
  friendly_id :title, use: :slugged
end
