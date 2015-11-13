class Deck < ActiveRecord::Base
  has_many :round
  has_many :cards
end