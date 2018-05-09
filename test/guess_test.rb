require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess'
require './lib/card'

class GuessTest < Minitest::Test
  def test_that_the_guess_is_right
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
    assert_equal card, guess.card
    assert_equal "10 of Hearts", guess.response
    assert guess.correct?
    assert_equal "Correct!", guess.feedback
  end

  def test_that_the_guess_can_be_incorrect
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)
    assert_equal "2 of Diamonds", guess.response
    refute guess.correct?
    assert_equal "Incorrect.", guess.feedback
  end
end
