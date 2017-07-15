class LocationSearchsController < ApplicationController
  def new
    @location_search = LocationSearch.new
  end

  def create
    @location_search = LocationSearch.(looking_search_params)
    if @location_search.save
      render location_search_path
    else
      render 'new'
    end
  end

  def show

  end
  protected
  def looking_search_params
    #code
    params.require(:location_search).permit(:full_address)
  end
end
