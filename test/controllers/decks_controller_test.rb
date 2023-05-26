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

  test "show" do
    get "/decks/#{Deck.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "title", "created_at", "updated_at"], data.keys
  end

  test "update" do
    deck = Deck.first
    patch "/decks/#{deck.id}.json", params: { title: "Updated deck" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated deck", data["title"]
  end
end
