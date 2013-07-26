class SiHeadlinesController < ApplicationController
	before_action :set_si_headline, only: [:show]

	def index
		@si_headlines = SiHeadline.all.page(params[:page]).per_page(60)
	end

	def show 
	end

	private

	def set_si_headline
		@si_headline = SiHeadline.find(params[:id])
	end
end
