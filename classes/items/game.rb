require './classes/items/item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at)
    super("#{Time.now.year}/#{Time.now.month}/#{Time.now.day}")
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
  end

  private

  def can_be_archived?
    super && (Time.now.year - @last_played_at.year > 2)
  end
end
