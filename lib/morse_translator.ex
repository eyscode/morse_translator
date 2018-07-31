defmodule MorseTranslator do
  @moduledoc """
  Module for translating series of morse code signals.
  Supports "?" as wildcard which means the signal was indistinguishable.
  """
  @morse_tree {
    :start,
    {
      "T",
      {
        "M",
        {"O", nil, nil},
        {"G", nil, nil}
      },
      {
        "N",
        {"K", nil, nil},
        {"D", nil, nil}
      }
    },
    {
      "E",
      {
        "A",
        {"W", nil, nil},
        {"R", nil, nil}
      },
      {
        "I",
        {"U", nil, nil},
        {"S", nil, nil}
      }
    }
  }
  @doc """
  This function takes a string word and return an array of possible characters that the morse code word could represent.

  ## Examples

      iex> MorseTranslator.possibilities "?-?"
      ["R","W","G","O"]

  """
  def possibilities(word) do
    List.flatten(translate(@morse_tree, String.graphemes(word)))
  end

  defp translate({letter, _, _}, []), do: letter

  defp translate(translation_tree = {_, right, left}, [head | tail]) do
    case head do
      "?" ->
        [
          translate(translation_tree, ["." | tail]),
          translate(translation_tree, ["-" | tail])
        ]
      "-" ->
        [translate(right, tail)]
      "." ->
        [translate(left, tail)]
    end
  end
end
