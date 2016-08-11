class TrackerController < ApplicationController
  def index
    @trackers = Tracker.all
  end

  def show
    @tracker = Tracker.find(params[:id])
  end

  def new
  end

  def create
    @tracker = Tracker.new(tracker_params)

    @tracker.save
    redirect_to @tracker
  end

  def edit
    @tracker = Tracker.find(params[:id])
  end

  def update
    @tracker = Tracker.find(params[:id])

    @tracker.update_attributes(tracker_params)
    @tracker.save
    redirect_to @tracker
  end

  def destroy
    #TODO
  end

  private
    def tracker_params
      params.require(:tracker).permit(:api_name, :url, :notes)
    end
end
