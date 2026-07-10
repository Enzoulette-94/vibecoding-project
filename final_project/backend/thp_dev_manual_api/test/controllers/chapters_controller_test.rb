require "test_helper"

class ChaptersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chapter = chapters(:one)
  end

  test "should get index" do
    get api_chapters_url, as: :json
    assert_response :success
  end

  test "should show chapter" do
    get api_chapter_url(@chapter), as: :json
    assert_response :success
  end
end
