class EventsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /events
  # GET /events.json
  def index
    @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new
    @race = Race.find(params[:race_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @race = Race.find(params[:race_id])
    @event = @race.events.build(params[:event])

    respond_to do |format|
      if @event.save
        format.html { redirect_to @race, :notice => 'Event was successfully created.' }
        format.json { render :json => @race, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, :notice => 'Event was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def view_event_overview
    @event = Event.find(params[:id])
    
  end
  
  
  def new_event_entry
    @event = Event.find(params[:event_id])
    @entry = EventEntry.new
    @entry.runners = params[:runners]
    @entry.team_id = params[:team_id]
    @event.event_entries << @entry
    if @event.save
      redirect_to @entry, :notice => "Entry successful!"
    else
      redirect_to races_url, :notice => "There was an error."
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :ok }
    end
  end
end
