require "test_helper"

class DecksControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/decks.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Deck.count, data.length
  end
end
