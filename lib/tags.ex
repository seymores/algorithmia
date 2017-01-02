defmodule Algorithmia.Tag do
    import Algorithmia.Common, only: :functions

    def scrape_rss(param_url) do
        body = Poison.encode! param_url
        request("tags/ScrapeRSS/0.1.6", body)
    end
end
