# Algorithmia

[Algorithmia](http://developers.algorithmia.com) Elixir client.
[See all algorithms here.](https://algorithmia.com/algorithms)

## Setup
Register an account with [Algorithmia](http://algorithmia.com) and configure your simple API key in config/dev.exs.

## Installation

  1. Add `algorithmia` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:algorithmia, git: "https://github.com/seymores/algorithmia"}]
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

### Auto Tag 1.0.0 [(See API page)](https://algorithmia.com/algorithms/nlp/AutoTag)

```elixir
iex> Algorithmia.NLP.auto_tag "This is a large test of fish keyword"
%{"metadata" => %{"content_type" => "json", "duration" => 0.048270531000000005},
  "result" => ["keyword", "fish", "large", "test"]}
```

### Summarize URL 0.1.2 [(See API page)](https://algorithmia.com/algorithms/nlp/SummarizeURL)
```elixir
iex> Algorithmia.NLP.summarize_url "http://www.theverge.com/2017/1/2/14143852/donald-trump-courier-safer-than-computer"
%{"metadata" => %{"content_type" => "text", "duration" => 0.164552669},
  "result" => "Donald Trump's presidential campaign was marked by verbal attacks on his opponents, with the candidate aiming public criticism at everyone from Ted Cruz to Hillary Clinton, from Megyn Kelly to Gold Star father Khizr Khan. But now he's got a new target for his complaints: the humble computer. \"I'll tell you what: no computer is safe,\" he said."}
```