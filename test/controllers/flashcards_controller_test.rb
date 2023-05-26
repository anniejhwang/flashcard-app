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

  test "show" do
    get "/flashcards/#{flashcards.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "question", "answer", "created_at", "updated_at"], data.keys
  end
  test "update" do
    flashcard = Flashcard.first
    patch "/flashcards/#{flashcard.id}.json", params: { question: "Updated question" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated question", data["question"]
    assert_equal flashcard.answer, data["answer"]
  end

  test "destroy" do
    assert_difference "Flashcard.count", -1 do
      delete "/flashcards/#{Flashcard.first.id}.json"
      assert_response 200
    end
  end
end
