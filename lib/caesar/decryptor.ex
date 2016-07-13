defmodule Caesar.Decryptor do
  @moduledoc """
  Provides the `decrypt` function.
  """

  import Caesar.Encryptor, only: [ encrypt: 4 ]

  @doc """
  Decrypts a string.

      iex> Caesar.Decryptor.decrypt("QRGTCVKQP IQNFGP ACM", 2)
      "OPERATION GOLDEN YAK"

  """
  def decrypt(string, rotation) do
    encrypt(String.split(String.upcase(string), ""), rotation, :-, [])
  end
end
