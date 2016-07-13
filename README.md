# Caesar

Implements the [Caesar
Cipher](http://www.practicalcryptography.com/ciphers/classical-era/caesar/) in
Elixir.

This project was written for learning purposes. Don't use the Caesar cipher;
it's extremely vulnerable.

### Installation

```sh
$ git clone https://github.com/jwworth/caesar
$ cd caesar
$ iex -S mix
```

### Usage

Encryption:

```elixir
iex> Caesar.Encryptor.encrypt("OPERATION GOLDEN YAK", 2)
"QRGTCVKQP IQNFGP ACM"
```

Decryption:

```elixir
iex> Caesar.Decryptor.decrypt("QRGTCVKQP IQNFGP ACM", 2)
"OPERATION GOLDEN YAK"
```

Negative numbers work too:

```elixir
iex> Caesar.Encryptor.encrypt("OPERATION GOLDEN YAK", -26)
"OPERATION GOLDEN YAK"
```

As does punctuation:

```elixir
iex> Caesar.Encryptor.encrypt("BACK TO BASE!", 2)
"DCEM VQ DCUG!"
```

### Tests

```sh
$ mix test
```

### License

Caesar is released under the [MIT License](http://www.opensource.org/licenses/MIT).
