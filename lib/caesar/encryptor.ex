defmodule Caesar.Encryptor do
  @moduledoc """
  Provides the `encrypt` function.
  """

  @doc """
  Encrypts a string.

      iex> Caesar.Encryptor.encrypt("AAA", 1)
      "BBB"

      iex> Caesar.Encryptor.encrypt("DEFEND THE EAST WALL OF THE CASTLE", 1)
      "EFGFOE UIF FBTU XBMM PG UIF DBTUMF"

  """
  def encrypt(string, rotation) do
    encrypt(String.split(String.upcase(string), ""), rotation, [])
  end

  defp encrypt([""], _, result) do
    List.to_string(result)
  end

  defp encrypt([h|t], rotation, result) do
    caesar_map = [
      A: 0,
      B: 1,
      C: 2,
      D: 3,
      E: 4,
      F: 5,
      G: 6,
      H: 7,
      I: 8,
      J: 9,
      K: 10,
      L: 11,
      M: 12,
      N: 13,
      O: 14,
      P: 15,
      Q: 16,
      R: 17,
      S: 18,
      T: 19,
      U: 20,
      V: 21,
      W: 22,
      X: 23,
      Y: 24,
      Z: 25
    ]

    index = Access.get(caesar_map, String.to_atom(h), nil)

    replacement =
      if index do
        { replacement, _ } = (Enum.at(caesar_map, rem((index + rotation), 26)))
        Atom.to_string(replacement)
      else
        h
      end

    encrypt(t, rotation, result ++ [replacement])
  end
end
