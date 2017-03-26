defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
    Creates a Deck.
  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
    suits = ["Spades", "Clubs", "Hearts", "Diamond"]

    for value <- values, suit <- suits do
      "#{value} of #{suit}"
    end
  end

  @doc """
    Shuffles a Deck.
  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
    Check if given Card is in give Deck.
  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
    Deals the given Deck by given hand_size.
  """
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end
end
