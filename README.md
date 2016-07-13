# Caesar

Implements the [Caesar
Cipher](http://www.practicalcryptography.com/ciphers/classical-era/caesar/) in
Elixir.

This project was written for learning purposes. Don't use the Caesar cipher;
it's extremely vunlerable.

### Installation

```sh
$ git clone https://github.com/jwworth/ceasar
$ cd caesar
$ iex -S mix
```

### Usage

Encryption:

```elixir
iex> Caesar.Encryptor.encrypt("OPERATION GOLDEN YAK", 2)
"QRGTCVKQP IQNFGP ACM""
```

### Tests

```sh
$ mix test
```

### License

Caesar is released under the [MIT License](http://www.opensource.org/licenses/MIT).
