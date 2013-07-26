class HeadlinesController < ApplicationController
  before_action :set_headline, only: [:show]

	def index
		@headlines = Headline.order("last_modified DESC").page(params[:page]).per_page(60)
	end

	def show
	end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_headline
    @headline = Headline.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def headline_params
    params.require(:headline).permit(:headline, :description)
  end
end
	
