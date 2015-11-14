class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck

  @@points_for_card = {}, @@cards = [], @@card = nil

  def self.points_for_card=(value)
    @@points_for_card = value
  end

  def self.cards=(value)
    @@cards = value
  end

  def self.card=(value)
    @@card = value
  end

  def self.points_for_card
    @@points_for_card
  end

  def self.cards
    @@cards
  end

  def self.card
    @@card
  end



end
