defmodule HackneyTutorial do
  def simple_request(method \\ :get, url \\ "https://friendpaste.com",
                     headers \\ [], payload \\ "", options \\ []) do
    {:ok, status, responseHeaders, clientReference} = :hackney.request(method, url, headers,
                                                                       payload, options )
  end
end
