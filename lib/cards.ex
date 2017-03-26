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
    Check if given `card` is in give `deck`.

  ## Examples

      iex> Cards.contains?(["1", "2"], "2")
      true

      iex> Cards.contains?(["1", "2"], "3")
      false

      iex> Cards.contains?([], "2")
      false

      iex> Cards.contains?(["1"], nil)
      false
  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
    Deals the given `deck` by given `hand_size`.
  """
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  @doc """
    Save given `deck` using given `filename` to filesystem.
  """
  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  @doc """
    Load Deck from file using given `filename`.
  """
  def load(filename) do
    case File.read(filename) do
      { :ok, binary } -> :erlang.binary_to_term binary
      { :error, reason } -> "Error: Cannot load Deck. Reason: #{reason}"
    end
  end

  @doc """
    Create a Deck using given `hand_size`.
    Basically, create, shuffle, deal Deck.
  """
  def create_hand(hand_size) do
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end
end
