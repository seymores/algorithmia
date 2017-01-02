defmodule Algorithmia.Util do
  import Algorithmia.Common, only: :functions

  def html2text(param_url) do
    body = Poison.encode! param_url
    request("util/Html2Text/0.1.4", body)
  end

end