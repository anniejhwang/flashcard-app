require "test_helper"

class FlashcardsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/flashcards.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Flashcard.count, data.length
  end

  test "create" do
    assert_difference "Flashcard.count", 1 do
      post "/flashcards.json", params: { question: "is mayonnaise and instrument", answer: "no" }
      assert_response 200
    end
  end
end
