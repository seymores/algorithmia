# Algorithmia

[Algorithmia](http://developers.algorithmia.com) Elixir client.
[See all algorithms here.](https://algorithmia.com/algorithms)

Please raise issue to request support for algorithm not listed here.

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

### Generic algortim runner
WIP: Algorithmia.run_algo(algorithm_name, data)

```elixir
iex> Algorithmia.run_algo("nlp/SentimentAnalysis/1.0.2", %{document: "I love this library"})
%{"metadata" => %{"content_type" => "json", "duration" => 0.9005015780000001},
  "result" => [%{"document" => "I love this library", "sentiment" => 0.6369}]}
```

### nlp/Summarizer 0.1.3 [(See API page)](https://algorithmia.com/algorithms/nlp/Summarizer)

```elixir
iex> Algorithmia.NLP.summarizer "This is a long test text..."
%{"metadata" => %{"content_type" => "text", "duration" => 5.44276e-4},
  "result" => "This is a long text test."}
```

### nlp/Sentiment Analysis 1.0.2 [(See API page)](https://algorithmia.com/algorithms/nlp/SentimentAnalysis)

Returns sentiment value between -1 and 1 (very negative to very positive)

```elixir
iex> Algorithmia.NLP.sentiment_analysis "I really like this library"
%{"metadata" => %{"content_type" => "json", "duration" => 1.188705657},
  "result" => [%{"document" => "I really like this library",
     "sentiment" => 0.4201}]}
```

### nlp/Auto Tag 1.0.0 [(See API page)](https://algorithmia.com/algorithms/nlp/AutoTag)

```elixir
iex> Algorithmia.NLP.auto_tag "This is a large test of fish keyword"
%{"metadata" => %{"content_type" => "json", "duration" => 0.048270531000000005},
  "result" => ["keyword", "fish", "large", "test"]}
```

### nlp/Summarize URL 0.1.2 [(See API page)](https://algorithmia.com/algorithms/nlp/SummarizeURL)
```elixir
iex> Algorithmia.NLP.summarize_url "http://www.theverge.com/2017/1/2/14143852/donald-trump-courier-safer-than-computer"
%{"metadata" => %{"content_type" => "text", "duration" => 0.164552669},
  "result" => "Donald Trump's presidential campaign was marked by verbal attacks on his opponents, with the candidate aiming public criticism at everyone from Ted Cruz to Hillary Clinton, from Megyn Kelly to Gold Star father Khizr Khan. But now he's got a new target for his complaints: the humble computer. \"I'll tell you what: no computer is safe,\" he said."}
```

### util/Html2Text 0.1.4 [(See API doc)](https://algorithmia.com/algorithms/util/Html2Text)

```elixir
iex> Algorithmia.Util.html2text "http://algorithmia.com/"
%{"metadata" => %{"content_type" => "text", "duration" => 0.5726827010000001},
  "result" => "Join a community built around state-of-the-art algorithm development. Create, share, and build on other algorithms that live in the cloud. Build awesome apps by integrating algorithms via REST. We all struggle from information overload. By connecting to RSS feeds, scraping and summarizing content, we were able to create a smarter RSS client that will help you get more out of your reading time. This demo combines several algorithms from HTML scraping to natural language processing. Content recommendation engines usually require significant backend wiring and infrastructure. We overcame this challenge and built a drop-in (three line) recommendation engine that can be easily integrated into any blog. This demo leverages site mapping and several natural-language processing algorithms. Racy content is difficult to identify in order to filter it out when necessary. We sought a novel approach to this problem by drawing polygons around the face and nose, and then measuring skin tone inside the face area but outside the nose, and look for similar patches in the remaining areas of the image. This demo uses OpenCV for face and nose detection. Navigate Product Hunt like a pro with Product Genius. This Chrome extension uses FP-Growth to surface recommended products from other users who have upvoted the product you are looking at. This is similar to how Amazon's \"Customers Who Bought This Item Also Bought\" recommendations work. Learn how to build and implement your own collaborative filtering recommendation engine today. How likely is your city to be affected by a recession? By analyzing municipal building permit data and applying multiple time series algorithms, we created a live analysis of selected cities’ economic development and trajectory. This demo is an example of acquiring fresh data, applying denoising and regression techniques, and deploying a live model. How is your website viewed by search engines? We created an interactive visualizer by mapping all pages in a given domain, retrieving content from pages and applying the Page Rank algorithm. This demo uses domain mapping techniques and the Page Rank algorithm. \"... people had been working on these algorithms for years, but we'd never heard of them.\" \"... providing the smarts needed to do various tasks in the fields of machine learning, audio and visual processing, and even computer vision.\" \"... until now, [algorithms] have been hidden in academic journals or in other formats that are hard for businesses to find and consume.\" \"... a place for businesses with piles of data to find researchers with a dreamboat algorithm.\" \"... a three-way intersection between machine learning, the API economy, and open source developers' need to monetize their creations\" \"... algorithms, central to the sharing economy, could use a way to be shared themselves.\""}
```  
  
### tags/ScrapeRSS 0.1.6 [(See API Doc)](https://algorithmia.com/algorithms/tags/ScrapeRSS)

```elixir
iex> Algorithmia.Tag.scrape_rss "https://news.ycombinator.com/rss"
%{"metadata" => %{"content_type" => "json", "duration" => 1.073468597},
  "result" => [%{"description" => "<a href=\"https://news.ycombinator.com/item?id=13301097\">Comments</a>",
     "title" => "Long-term stress erodes memory",
     "url" => "http://sciencebulletin.org/archives/1327.html"},
   %{"description" => "<a href=\"https://news.ycombinator.com/item?id=13301280\">Comments</a>",
     "title" => "Why HTTPS for Everything?",
     "url" => "https://https.cio.gov/everything/"},..}
```