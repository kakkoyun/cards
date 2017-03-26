defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck crates a Deck has 52 cards inside" do
    assert length(Cards.create_deck) == 52
  end

  test "shuffling a deck randomizes it" do
    refute Cards.create_deck == Cards.shuffle(Cards.create_deck)
  end
end
