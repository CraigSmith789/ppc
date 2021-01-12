class Guest < ApplicationRecord
  has_many :invites
  has_many :parties, through: :invites
end
