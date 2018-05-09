require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
class CardTest < Minitest::Test
  def test_that_there_is_a_return_value
    card = Card.new("Ace", "Spades")
    assert_equal "Ace", card.value
  end
end
