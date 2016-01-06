class CitiesController < ApplicationController
  
  before_filter :set_city

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  private
  
  def set_city
  	city_id = params[:id]
  	@city = City.find_by_id(city_id)
  end

end
