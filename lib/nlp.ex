defmodule Algorithmia.NLP do


  def summarizer(input) do
    url = "https://api.algorithmia.com/v1/algo/nlp/Summarizer/0.1.3"

    api_key = Application.get_env(:algorithmia, :simple_api_key)
    headers = [{"Content-Type", "application/text"}, {"Authorization", "Simple #{api_key}"}]
    options = [ssl: [{:versions, [:'tlsv1.2']}], recv_timeout: 5000]

    body = input

    case HTTPoison.post(url, body, headers, options) do
      {:ok, response} -> response.body |> Poison.decode!
      {_, msg} -> msg
    end
  end

end
