class ParksController < ApplicationController
  def index
    @state = params[:state]
    @parks = ParksFacade.search_state(@state)
  end
end
