class Tracker < ApplicationRecord
  has_many :checkers
  
  validates :api_name, :url, presence: true
end
