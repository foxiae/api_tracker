class TrackersController < ApplicationController
  def index
    @trackers = Tracker.all
  end

  def show
    @tracker = Tracker.find(params[:id])
  end

  def new
    @tracker = Tracker.new
  end

  def create
    @tracker = Tracker.new(tracker_params)
    if @tracker.save
      redirect_to @tracker
    else
      render 'new'
    end
  end

  def edit
    @tracker = Tracker.find(params[:id])
  end

  def update
    @tracker = Tracker.find(params[:id])

    @tracker.update_attributes(tracker_params)
    if @tracker.save
      redirect_to @tracker
    else
      render 'edit'
    end
  end

  def destroy
    @tracker = Tracker.find(params[:id])
    @tracker.destroy

    redirect_to trackers_path
  end

  private
    def tracker_params
      params.require(:tracker).permit(:api_name, :url, :notes)
    end
end
