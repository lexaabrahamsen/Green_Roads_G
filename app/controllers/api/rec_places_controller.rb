class Api::RecPlacesController < ApplicationController

  def index
    query = params[:query]
    key = params[:key]
    @rec_places = HTTP.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{query}&key=#{ENV['API_KEY']}").parse
    render 'index.json.jb'
  end
end