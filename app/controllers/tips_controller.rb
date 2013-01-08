class TipsController < ApplicationController

  def index
    @staffs = Staff.order("LOWER(name)")
    @hour = (params[:amount].to_f)/Staff.total
  end

end
