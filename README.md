# Algorithmia

[Algorithmia](http://developers.algorithmia.com) Elixir client.
[See all algorithms here.](https://algorithmia.com/algorithms)

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

### Summarizer 0.1.3 [(See API page)](https://algorithmia.com/algorithms/nlp/Summarizer)

```elixir
iex> Algorithmia.NLP.summarizer "This is a long test text..."
%{"metadata" => %{"content_type" => "text", "duration" => 5.44276e-4},
  "result" => "This is a long text test."}
```

### Sentiment Analysis 1.0.2 [(See API page)](https://algorithmia.com/algorithms/nlp/SentimentAnalysis)

Returns sentiment value between -1 and 1 (very negative to very positive)

```elixir
iex> Algorithmia.NLP.sentiment_analysis "I really like this library"
%{"metadata" => %{"content_type" => "json", "duration" => 1.188705657},
  "result" => [%{"document" => "I really like this library",
     "sentiment" => 0.4201}]}
```