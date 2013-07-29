class MlbHeadlinesController < ApplicationController
  before_action :set_mlb_headline, only: [:show]

	def index
		@mlb_headlines = MlbHeadline.all.order('last_modified desc').page(params[:page]).per_page(60)
	end

	def show
	end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_mlb_headline
    @mlb_headline = MlbHeadline.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def mlb_headline_params
    params.require(:headline).permit(:headline, :description)
  end
end