defmodule Algorithmia.NLP do
  import Algorithmia.Common, only: :functions

  def summarizer(input) do
    body = Poison.encode! input
    request("nlp/Summarizer/0.1.3", body)
  end

  def sentiment_analysis(input) do
    body = Poison.encode! %{document: input}
    request("nlp/SentimentAnalysis/1.0.2", body)
  end

  def auto_tag(input) do
    body = Poison.encode! input
    request("nlp/AutoTag/1.0.0", body)
  end

  def summarize_url(param_url) do
    body = Poison.encode! param_url
    request("nlp/SummarizeURL/0.1.2", body)
  end

end
