class NcaaMensFbHeadlinesController < ApplicationController
  before_action :set_ncaa_mens_fb_headline, only: [:show]

	def index
		@ncaa_mens_fb_headlines = NcaaMensFbHeadline.all.order('last_modified desc').page(params[:page]).per_page(60)
	end

	def show
	end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_ncaa_mens_fb_headline
    @ncaa_mens_fb_headline = NcaaMensFbHeadline.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def ncaa_mens_fb_headline_params
    params.require(:headline).permit(:headline, :description)
  end
end
