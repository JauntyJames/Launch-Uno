require 'rails_helper'

RSpec.describe Deck do
  describe "#build_deck" do
    it "creates a deck of 108 cards" do
      new_deck = Deck.new
      new_deck.build_deck
      expect(new_deck.deck.length).to eq 108
    end
  end
end
