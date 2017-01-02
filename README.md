# Algorithmia

[Algorithmia](http://developers.algorithmia.com) Elixir client.

## Setup
Register an account with [Algorithmia](http://algorithmia.com) and configure your simple API key in config/dev.exs.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `algorithmia` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:algorithmia, "~> 0.2.0"}]
    end
    ```

  2. Ensure `algorithmia` is started before your application:

    ```elixir
    def application do
      [applications: [:algorithmia]]
    end
    ```

## Algorithms

### Summarizer 0.1.3

```elixir
iex> Algorithmia.NLP.summarizer "This is a long test text..."
%{"metadata" => %{"content_type" => "text", "duration" => 5.44276e-4},
  "result" => "This is a long text test."}
```
