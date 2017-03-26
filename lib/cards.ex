defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
    Hello world.

    ## Examples

    iex> Cards.hello
    :world

  """
  def hello do
    :world
  end

  @doc """
    Say Hi!!

    ## Examples

    iex> Cards.say_hi
    "hi there!"

  """
  def say_hi do
    "hi there!"
  end

  @doc """
    Creates a Deck.
  """
  def create_deck do
    ["Ace", "Two", "Three"]
  end

  @doc """
    Shuffles a Deck.
  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end
end
