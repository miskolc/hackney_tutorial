defmodule HackneyTutorial do
  def simple_request(method \\ :get, url \\ "https://friendpaste.com",
                     headers \\ [], payload \\ "", options \\ []) do
    {:ok, status, responseHeaders, clientReference} = :hackney.request(method, url, headers,
                                                                       payload, options )
  end

  def get(url \\ "https://friendpaste.com", headers \\ [], payload \\ "", options \\ []) do
    :hackney.get(url, headers, payload, options)
  end
end
