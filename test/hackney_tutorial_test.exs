defmodule HackneyTutorialTest do
  use ExUnit.Case
  doctest HackneyTutorial

  test "Get the response" do
    {:ok, status, headers, client} = HackneyTutorial.simple_request
    assert status == 200
  end

  test "RESTful GET method" do
    {:ok, status, headers, client} = HackneyTutorial.get
    assert status == 200

    {:ok, status, headers, client} = HackneyTutorial.get("https://github.com")
    assert status == 200
  end

  test "client method" do
    {:ok, status, headers, client} = HackneyTutorial.get
    assert client = HackneyTutorial.client({:ok, status, headers, client})
  end

  test "get body" do
    body = HackneyTutorial.get |> HackneyTutorial.client |> HackneyTutorial.body
    assert body =~ ~r/html/
  end
end
