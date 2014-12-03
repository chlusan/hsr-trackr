class StopTimesController < ApplicationController

  def show
    @stop_time = StopTime.where( trip_id: params[:trip_id], stop_id: params[:stop_id] ).first
    @comments = Comment.where( trip_id: params[:trip_id], stop_id: params[:stop_id] )
  end

end
