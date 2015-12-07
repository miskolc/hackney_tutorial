defmodule HackneyTutorial do
  def simple_request do
    method = :get
    url = <<"https://friendpaste.com">>
    headers = []
    payload = <<>>
    options = []
    {:ok, status, responseHeaders, clientReference} = :hackney.request(method, url, headers,
                                                                       payload, options )
  end
end
