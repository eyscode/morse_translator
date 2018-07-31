defmodule MorseTranslatorTest do
  use ExUnit.Case
  doctest MorseTranslator

  import MorseTranslator, only: [possibilities: 1]
  test "a_single_signal" do
    assert possibilities(".") == ["E"]
    assert possibilities(".-") == ["A"]
  end
  test "a_word_with_a_single_unknown_signal" do
    assert possibilities("?") == ["E","T"]
    assert possibilities("?.") == ["I","N"]
    assert possibilities(".?") == ["I","A"]
  end
end
