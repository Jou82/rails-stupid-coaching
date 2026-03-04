require "application_system_test_case"

c
class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h1", text: "Stupid Coaching"
    assert_selector "input[type=text]"
    assert_selector "input[type=submit]"
  end

  test "saying Hello yields a grumpy response" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "asking a question yields a silly response" do
    visit ask_url
    fill_in "question", with: "What time is it?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "saying going to work yields a great response" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end
end
