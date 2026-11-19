class CategoryBooksController < ApplicationController
  before_action :set_category_book, only: %i[ show edit update destroy ]

  # GET /category_books or /category_books.json
  def index
    @category_books = CategoryBook.all
  end

  # GET /category_books/1 or /category_books/1.json
  def show
  end

  # GET /category_books/new
  def new
    @category_book = CategoryBook.new
  end

  # GET /category_books/1/edit
  def edit
  end

  # POST /category_books or /category_books.json
  def create
    @category_book = CategoryBook.new(category_book_params)

    respond_to do |format|
      if @category_book.save
        format.html { redirect_to @category_book, notice: "Category book was successfully created." }
        format.json { render :show, status: :created, location: @category_book }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @category_book.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /category_books/1 or /category_books/1.json
  def update
    respond_to do |format|
      if @category_book.update(category_book_params)
        format.html { redirect_to @category_book, notice: "Category book was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @category_book }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @category_book.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /category_books/1 or /category_books/1.json
  def destroy
    @category_book.destroy!

    respond_to do |format|
      format.html { redirect_to category_books_path, notice: "Category book was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_book
      @category_book = CategoryBook.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def category_book_params
      params.fetch(:category_book, {})
    end
end
