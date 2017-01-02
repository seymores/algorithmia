defmodule Algorithmia.Common do
    
  def request(url, body, content_type \\ "application/json") do
    api_key = Application.get_env(:algorithmia, :simple_api_key)
    headers = [{"Content-Type", content_type}, {"Authorization", "Simple #{api_key}"}]
    options = [ssl: [{:versions, [:'tlsv1.2']}], recv_timeout: 5000]

    case HTTPoison.post(url, body, headers, options) do
      {:ok, response} -> response.body |> Poison.decode!
      {_, msg} -> msg
    end
  end

end