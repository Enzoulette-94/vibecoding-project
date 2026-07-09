module Api
  class ChaptersController < ApplicationController
    def index
      chapters = Chapter.order(:position)
      render json: chapters
    end

    def show
      chapter = Chapter.find(params[:id])
      render json: chapter
    end
  end
end
