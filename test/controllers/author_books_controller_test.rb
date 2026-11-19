require "test_helper"

class AuthorBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @author_book = author_books(:one)
  end

  test "should get index" do
    get author_books_url
    assert_response :success
  end

  test "should get new" do
    get new_author_book_url
    assert_response :success
  end

  test "should create author_book" do
    assert_difference("AuthorBook.count") do
      post author_books_url, params: { author_book: {} }
    end

    assert_redirected_to author_book_url(AuthorBook.last)
  end

  test "should show author_book" do
    get author_book_url(@author_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_author_book_url(@author_book)
    assert_response :success
  end

  test "should update author_book" do
    patch author_book_url(@author_book), params: { author_book: {} }
    assert_redirected_to author_book_url(@author_book)
  end

  test "should destroy author_book" do
    assert_difference("AuthorBook.count", -1) do
      delete author_book_url(@author_book)
    end

    assert_redirected_to author_books_url
  end
end
