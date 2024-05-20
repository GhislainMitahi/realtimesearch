class SearchesController < ApplicationController
    def new
    end

  def query
    # This is a simplified example. Replace it with your actual search logic.
    if params[:query].present?
      results = Article.where("title ILIKE ?", "%#{params[:query]}%")
      render json: results.as_json(only: [:id, :title])
    else
      render json: []
    end
  end
end
