class Party < ApplicationRecord
  has_many :solutions
  belongs_to :user
end
