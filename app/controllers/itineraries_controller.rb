class ItinerariesController < ApplicationController
  def index
    @itineraries = current_user.itineraries
  end

  def show
    @itinerary = Itinerary.find(params[:id])
  end

  def new
    @itinerary = Itinerary.new
  end

  def create
    @itinerary = Itinerary.new
    @itinerary.start_date = Chronic.parse(params[:start_date])
    @itinerary.itinerary_name = params[:itinerary_name]
    @itinerary.user_id = current_user.id

    if @itinerary.save
      redirect_to "/itineraries", :notice => "Itinerary created successfully."
    else
      render 'new'
    end
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
  end

  def update
    @itinerary = Itinerary.find(params[:id])

    @itinerary.start_date = Chronic.parse(params[:start_date])
    @itinerary.itinerary_name = params[:itinerary_name]
    @itinerary.user_id = current_user.id

    if @itinerary.save
      redirect_to "/itineraries/#{@itinerary.id}", :notice => "Itinerary updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @itinerary = Itinerary.find(params[:id])

    @itinerary.destroy

    redirect_to "/itineraries", :notice => "Itinerary deleted."
  end
end
