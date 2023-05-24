class Item < ApplicationRecord
  validates :user_id, presence: true
end
