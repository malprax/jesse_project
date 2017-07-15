class LocationSearchsController < ApplicationController
  def new
    #code
  end
  protected
  def looking_search_params
    #code
    params.require(:location_search).permit(:location)
  end
end
