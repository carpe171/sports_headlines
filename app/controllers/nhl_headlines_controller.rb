class NhlHeadlinesController < ApplicationController
  before_action :set_nhl_headline, only: [:show]

	def index
		@nhl_headlines = NhlHeadline.all.order('last_modified desc').page(params[:page]).per_page(60)
	end

	def show
	end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_nhl_headline
    @nhl_headline = NhlHeadline.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def nhl_headline_params
    params.require(:headline).permit(:headline, :description)
  end
end
