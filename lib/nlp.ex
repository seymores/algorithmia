defmodule Algorithmia.NLP do
  import Algorithmia.Common, only: :functions

  def summarizer(input) do
    url = "https://api.algorithmia.com/v1/algo/nlp/Summarizer/0.1.3"    
    body = Poison.encode! input
    request(url, body)
  end

  def sentiment_analysis(input) do
    url = "https://api.algorithmia.com/v1/algo/nlp/SentimentAnalysis/1.0.2"
    body = Poison.encode! %{document: input}
    request(url, body)
  end

  def auto_tag(input) do
    url = "https://api.algorithmia.com/v1/algo/nlp/AutoTag/1.0.0"
    body = Poison.encode! input
    request(url, body)
  end

  def summarize_url(param_url) do
    url = "https://api.algorithmia.com/v1/algo/nlp/SummarizeURL/0.1.2"
    body = Poison.encode! param_url
    request(url, body)
  end

end
