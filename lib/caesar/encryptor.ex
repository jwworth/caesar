defmodule Caesar.Encryptor do
  @moduledoc """
  Provides the `encrypt` function.
  """

  @caesar_map ~w/A B C D E F G H I J K L M N O P Q R S T U V W X Y Z/

  @doc """
  Encrypts a string.

      iex> Caesar.Encryptor.encrypt("OPERATION GOLDEN YAK", 2)
      "QRGTCVKQP IQNFGP ACM"

      iex> Caesar.Encryptor.encrypt("OPERATION GOLDEN YAK", -26)
      "OPERATION GOLDEN YAK"

      iex> Caesar.Encryptor.encrypt("BACK TO BASE!", 2)
      "DCEM VQ DCUG!"

  """
  def encrypt(string, rotation) do
    encrypt(String.split(String.upcase(string), ""), rotation, :+, [])
  end

  def encrypt([""], _, _, result) do
    List.to_string(result)
  end

  def encrypt([h | t], rotation, operator, result) do
    index = Enum.find_index(@caesar_map, fn n -> n == h end)

    replacement =
      if index do
        adjustment = apply(Kernel, operator, [index, rotation])
        Enum.at(@caesar_map, rem(adjustment, 26))
      else
        h
      end

    encrypt(t, rotation, operator, result ++ [replacement])
  end
end
