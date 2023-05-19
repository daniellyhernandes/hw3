class PlacesController < ApplicationController

  
  def index
     @places = Place.all
  end

  def new
     @place = Place.new
  end

  def create
    @place = Place.new
    @place["name"] = params["place"]["name"]
    @place.save
    redirect_to "/places"
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
    @posts = Post.where({ "place_id" => @place["id"] })
  end



  

  def edit
    # @company = Company.find_by({ "id" => params["id"] })
  end

  def update
    # @company = Company.find_by({ "id" => params["id"] })
    # @company["name"] = params["company"]["name"]
    # @company["city"] = params["company"]["city"]
    # @company["state"] = params["company"]["state"]
    # @company.save
    # redirect_to "/companies"
  end

  def destroy
    # @company = Company.find_by({ "id" => params["id"] })
    # @company.destroy
    # redirect_to "/companies"
  end

end
