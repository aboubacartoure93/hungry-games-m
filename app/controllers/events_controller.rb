class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy, :join, :leave]
  before_action :set_restaurant, only: [:new, :create, :index]
  before_action :set_event, only: [:show, :join, :leave]

  def new
  	@event = Event.new
  end

  def index
    @events = @restaurant.events.upcoming
  end

  def list
    @events = Event.upcoming.joinable
    render :index
  end

  def edit
  end

  def show

  end

  def roulette
    @event = Event.roulettable.sample
    @event.users << current_user
    redirect_to @event, notice: %Q[Congrats you have been added to the event below. Not feeling it? Click here to #{view_context.link_to("leave", leave_event_path(@event), method: :delete)}.]
  end

  def join
    @event.users << current_user
    redirect_to @event, notice: "Added to event."
  end

  def leave
    @event.users.delete(current_user)
    redirect_to @event, notice: "Removed from event."
  end

  def create
    @restaurant.events.create(event_params)
    redirect_to restaurants_path, notice: "New event created."
  end

  private

  def event_params
    params.require(:event).permit(:start).merge(user: current_user)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
