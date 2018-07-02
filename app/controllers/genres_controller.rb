class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update, :destroy]

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def show

  end

  def edit

  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to @genre
  end

  def update
    @genre.update(genre_params)
    redirect_to @genre
  end

  def destroy
    @genre.destroy
    redirect_to genres_path
  end

  private
  def set_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name)
  end
end
