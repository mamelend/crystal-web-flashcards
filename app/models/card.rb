class Card < ActiveRecord::Base
  belongs_to :deck


  def is_correct?(ans)
    ans.downcase == self.answer.downcase
  end
end
