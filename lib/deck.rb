class Deck
  attr_reader :cards, :count
  def initialize(cards)
    @cards = cards
    @count = @cards.count
  end

  def sort
    switched = true
    while switched
      switched = false
      (cards.length - 1).times do |card|
        if cards[card].value.to_i > cards[card + 1].value.to_i
          cards[card], cards[card + 1] = cards[card + 1], cards[card]
          switched = true
        end
      end
    end
    cards
  end

end
