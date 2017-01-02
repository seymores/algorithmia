defmodule Algorithmia.Tag do
    import Algorithmia.Common, only: :functions

    def scrape_rss(param_url) do
        url = "https://api.algorithmia.com/v1/algo/tags/ScrapeRSS/0.1.6"
        body = Poison.encode! param_url
        request(url, body)
    end
end
