require "test_helper"

class FlashcardsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/flashcards.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Flashcard.count, data.length
  end
end
