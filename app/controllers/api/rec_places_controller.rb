class Api::RecPlacesController < ApplicationController

# working with googleapis
  # def index
  # 	p "we are in the index action"
  #   query = params[:query]
  #   # key = params[:key]
  #   @rec_places = HTTP.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{query}&key=#{ENV['API_KEY']}").parse
  #   render 'index.json.jb'
  # end

    def index
  	p "we are in the index action"
    query = params[:query]
    # key = params[:key]
    response = HTTParty.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{query}&key=#{ENV['API_KEY']}")
    @rec_places = JSON.parse(response.body)
    render 'index.json.jb'
  	end

 #  def index
	# @rec_places = RecPlace.all
	# render index.json.jb
 #  end

end 