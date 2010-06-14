class CelestialStatisticsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @celestial_statistics = CelestialStatistic.order(@sort).paginate(:page => params[:page], :per_page => CelestialStatistic.per_page)
  end
  
  def show
    @celestial_statistic = CelestialStatistic.find(params[:id])
  end
end
