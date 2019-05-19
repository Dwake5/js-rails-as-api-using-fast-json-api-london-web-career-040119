class SightingsController < ApplicationController
  def show
    @sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(@sighting).serializable_hash
  end

  def index
    @sightings = Sighting.all
    render json: SightingSerializer.new(@sightings).serializable_hash
  end
end