class Game < ActiveRecord::Base

  validates :player_one_id, :player_two_id, presence: true
  belongs_to :player_one, class_name: 'Player'
  belongs_to :player_two, class_name: 'Player'
  has_many :choices
end
