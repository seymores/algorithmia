defmodule Algorithmia.Util do
  import Algorithmia.Common, only: :functions

  def html2text(param_url) do
    url = "https://api.algorithmia.com/v1/algo/util/Html2Text/0.1.4"
    body = Poison.encode! param_url
    request(url, body)
  end

end