class Tracker < ApplicationRecord
  validates :api_name, :url, presence: true
end
