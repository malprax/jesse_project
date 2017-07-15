class LocationSearchsController < ApplicationController
  protected
  def looking_search_params
    #code
    params.require(:location_search).permit(:location)
  end
end
