class Article < ApplicationRecord
  validates :title, :content, presence: true

  extend FriendlyId
  friendly_id :title, use: :slugged
end
