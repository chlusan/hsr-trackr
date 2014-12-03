class StopsController < ApplicationController

  def show
    @stop = Stop.find_by_code(params[:id])
  end

end
