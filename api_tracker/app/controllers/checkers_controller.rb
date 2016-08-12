class CheckersController < ApplicationController
  def create
    @tracker = Tracker.find(params[:tracker_id])
    @checker = @tracker.checkers.create(checker_params)
    redirect_to trackers_path(@tracker)
  end

  private
    def checker_params
      params.require(:checker).permit(:date, :check_body)
    end
end
