class EventsController < ApplicationController

  def index
    date = DateTime.now
    @upcoming_events = Event.upcoming(date)
    @past_events = Event.past(date)
  end

  def show
    @event = Event.find(params[])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:notice] = 'Event created'
      redirect_to @event
    else
      render 'new'
    end
  end

  private

  def event_params
    params.require(:event).permit([:title, :location, :date])
  end

end
