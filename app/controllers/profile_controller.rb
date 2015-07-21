class ProfileController < ApplicationController
  def profile
  	@idates = Idate.all
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
