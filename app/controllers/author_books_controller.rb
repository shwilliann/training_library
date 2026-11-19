class AuthorBooksController < ApplicationController
  before_action :set_author_book, only: %i[ show edit update destroy ]

  # GET /author_books or /author_books.json
  def index
    @author_books = AuthorBook.all
  end

  # GET /author_books/1 or /author_books/1.json
  def show
  end

  # GET /author_books/new
  def new
    @author_book = AuthorBook.new
  end

  # GET /author_books/1/edit
  def edit
  end

  # POST /author_books or /author_books.json
  def create
    @author_book = AuthorBook.new(author_book_params)

    respond_to do |format|
      if @author_book.save
        format.html { redirect_to @author_book, notice: "Authors book was successfully created." }
        format.json { render :show, status: :created, location: @author_book }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @author_book.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /author_books/1 or /author_books/1.json
  def update
    respond_to do |format|
      if @author_book.update(author_book_params)
        format.html { redirect_to @author_book, notice: "Authors book was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @author_book }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @author_book.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /author_books/1 or /author_books/1.json
  def destroy
    @author_book.destroy!

    respond_to do |format|
      format.html { redirect_to author_books_path, notice: "Authors book was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author_book
      @author_book = AuthorBook.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def author_book_params
      params.fetch(:author_book, {})
    end
end
