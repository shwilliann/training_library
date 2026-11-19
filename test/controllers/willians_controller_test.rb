require "test_helper"

class WilliansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @willian = willians(:one)
  end

  test "should get index" do
    get willians_url
    assert_response :success
  end

  test "should get new" do
    get new_willian_url
    assert_response :success
  end

  test "should create willian" do
    assert_difference("Willian.count") do
      post willians_url, params: { willian: { produto: @willian.produto, user_id: @willian.user_id } }
    end

    assert_redirected_to willian_url(Willian.last)
  end

  test "should show willian" do
    get willian_url(@willian)
    assert_response :success
  end

  test "should get edit" do
    get edit_willian_url(@willian)
    assert_response :success
  end

  test "should update willian" do
    patch willian_url(@willian), params: { willian: { produto: @willian.produto, user_id: @willian.user_id } }
    assert_redirected_to willian_url(@willian)
  end

  test "should destroy willian" do
    assert_difference("Willian.count", -1) do
      delete willian_url(@willian)
    end

    assert_redirected_to willians_url
  end
end
