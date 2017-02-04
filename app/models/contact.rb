class Contact < ApplicationRecord
  validates :name, :email, :message, presence: true
  validates :name, length: { minimum: 5 }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
