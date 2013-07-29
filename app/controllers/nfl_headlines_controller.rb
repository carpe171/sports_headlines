class NflHeadlinesController < ApplicationController
  before_action :set_nfl_headline, only: [:show]

	def index
		@nfl_headlines = NflHeadline.all.order('last_modified desc').page(params[:page]).per_page(60)
	end

	def show
	end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_nfl_headline
    @nfl_headline = NflHeadline.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def nfl_headline_params
    params.require(:headline).permit(:headline, :description)
  end
end
