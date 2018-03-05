class Card
  def initialize(color, text)
    @color = color
    @text = text
  end
end

class Deck
  attr_reader :deck

  def initialize
    #if we wanted to play with more than 4 people, we could add a parameter specifying the number of decks.  Here, we'll just have one.
    @deck = []
  end

  def build_deck
    colors = ["red", "blue", "green", "yellow"]

    text_two = ["skip", "draw_2", "reverse"]

    text_four = ["wild", "wild_draw_four"]

    colors.each do |color|

      #each color has 2 of each from the text_2 array
      text_two.each do |text|
        2.times do
          @deck << Card.new(color, text)
        end
      end

      #each color has only 1 zero
      @deck << Card.new(color, 0)

      #each color has 2 of all other numbers
      9.times do |number|
        2.times do
          @deck << Card.new(color, number)
        end
      end

    end

    #wilds don't have specific colors
    text_four.each do |text|
      4.times do
        @deck << Card.new("multi", text)
      end
    end
  end
end
