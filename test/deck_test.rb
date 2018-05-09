require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require './lib/deck'

class DeckTest < Minitest::Test
  def test_that_we_can_store_cards_into_deck
  card_1 = Card.new("3", "Hearts")
  card_2 = Card.new("4", "Clubs")
  card_3 = Card.new("5", "Diamonds")
  deck = Deck.new([card_1, card_2, card_3])
  assert_equal [card_1, card_2, card_3], deck.cards
  assert_equal 3, deck.count
  end

  def test_sorting_the_deck
    card_1 = Card.new("4","Hearts")
    card_2 = Card.new("3", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])

  assert_equal [card_2, card_1, card_3], deck.sort
  end
end
