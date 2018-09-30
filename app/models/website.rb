class Website < ApplicationRecord

  before_save :create_blot

  def create_blot
    
    return unless self.blot.empty?

    # get 2-6 random characters
    num_of_emojis = rand(2..6)
    blot_string = ""
    while blot_string.size < num_of_emojis do
      blot_string += Emoji.find(Emoji.pluck(:id).sample).char
    end
    self.blot = blot_string
  end

end
