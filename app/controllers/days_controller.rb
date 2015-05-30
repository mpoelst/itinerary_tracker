class DaysController < ApplicationController
  def index
    @days = Day.all
  end

  def show
    @day = Day.find(params[:id])
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.new
    @day.lodging_address = params[:lodging_address]
    @day.events = params[:events]
    @day.origin_location_id = params[:origin_location_id]
    @day.transportation = params[:transportation]
    @day.arrival_date = params[:arrival_date]
    @day.notes = params[:notes]
    @day.lodging_name = params[:lodging_name]
    @day.itinerary_id = params[:itinerary_id]
    @day.destination_location_id = params[:destination_location_id]

    if @day.save
      redirect_to "/itineraries/#{@day.itinerary_id}", :notice => "Day created successfully."
    else
      render 'new'
    end
  end

  def edit
    @day = Day.find(params[:id])
  end

  def update
    @day = Day.find(params[:id])

    @day.lodging_address = params[:lodging_address]
    @day.events = params[:events]
    @day.origin_location_id = params[:origin_location_id]
    @day.transportation = params[:transportation]
    @day.arrival_date = params[:arrival_date]
    @day.notes = params[:notes]
    @day.lodging_name = params[:lodging_name]
    @day.itinerary_id = params[:itinerary_id]
    @day.destination_location_id = params[:destination_location_id]

    if @day.save
      redirect_to "/days", :notice => "Day updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @day = Day.find(params[:id])

    @day.destroy

    redirect_to "/days", :notice => "Day deleted."
  end
end
