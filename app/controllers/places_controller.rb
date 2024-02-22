class PlacesController < ApplicationController
 
  def index
   @places = Place.all
  end

  def new
    @place = Place.new
  end

  def show
  end

  def create
    @place=Place.new
    @place["name"]= params["name"]
    @place.save
    redirect_to "/places"
  end

end