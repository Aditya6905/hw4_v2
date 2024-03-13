class Place < ApplicationRecord
  belongs_to :user
  has_many :entries
  # Other code...
end