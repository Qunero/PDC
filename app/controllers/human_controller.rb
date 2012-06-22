class HumanController < ApplicationController
  def show_by_chr
	  @chr = params[:chr]
  end
end
