class TipsController < ApplicationController

  def index
    @staffs = Staff.order('hours desc')
    @hour = (params[:amount].to_f)/Staff.total
  end

end
