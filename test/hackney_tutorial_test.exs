defmodule HackneyTutorialTest do
  use ExUnit.Case
  doctest HackneyTutorial

  test "Get the response" do
    {:ok, status, headers, client} = HackneyTutorial.simple_request
    assert status == 200
  end
end
