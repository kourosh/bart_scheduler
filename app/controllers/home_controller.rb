class HomeController < ApplicationController
  def index
    @stations = Station.all
    @departures = Departure.all
  end
end
