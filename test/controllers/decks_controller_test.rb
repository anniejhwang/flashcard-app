require "test_helper"

class DecksControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/decks.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Deck.count, data.length
  end

  test "create" do
    assert_difference "Deck.count", 1 do
      post "/decks.json", params: { title: "spongebob" }
      assert_response 200
    end
  end
end