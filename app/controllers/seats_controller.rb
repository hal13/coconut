class SeatsController < ApplicationController

  before_action :find_flight, only: [:create, :update, :destroy]
  
  def create
    @seat = @flight.seats.new(seat_params)
    if @seat.save
      redirect_to flight_path(@flight.id)
    else
      render()
    end
  end

  def update
    @seat = Seat.find(params[:id])
    if @seat.update(seat_params)
      redirect_to flight_path(@fligt.id)
    else
      render()
    end
  end

  def destroy
    @seat = Seat.find(params[:id])
    @seat.destroy
    redirect_to flight_path(@flight.id)
  end

  private

  def find_flight
    @flight = Flight.find(params[:flight_id])
  end

  def seat_params
    params[:seat].permit(:name, :baggage)
  end
end
