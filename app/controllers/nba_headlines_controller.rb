class NbaHeadlinesController < ApplicationController

  before_action :set_nba_headline, only: [:show]

	def index
		@nba_headlines = NbaHeadline.all.order('last_modified desc').page(params[:page]).per_page(60)
	end

	def show
	end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_nba_headline
    @nba_headline = NbaHeadline.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def nba_headline_params
    params.require(:headline).permit(:headline, :description)
  end
end
