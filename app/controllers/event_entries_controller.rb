class EventEntriesController < ApplicationController
  # GET /event_entries
  # GET /event_entries.json
  def index
    @event_entries = EventEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @event_entries }
    end
  end

  # GET /event_entries/1
  # GET /event_entries/1.json
  def show
    @event_entry = EventEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @event_entry }
    end
  end

  # GET /event_entries/new
  # GET /event_entries/new.json
  def new
    @event_entry = EventEntry.new
    @event = Event.find(params[:event_id])
    @team = Team.find_by_school_name(current_user.team_id)
    @runners = @team.runners
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @event_entry }
    end
  end

  # GET /event_entries/1/edit
  def edit
    @event_entry = EventEntry.find(params[:id])
  end

  # POST /event_entries
  # POST /event_entries.json
  def create
    @event_entry = EventEntry.new(params[:event_entry])

    respond_to do |format|
      if @event_entry.save
        format.html { redirect_to @event_entry, :notice => 'Event entry was successfully created.' }
        format.json { render :json => @event_entry, :status => :created, :location => @event_entry }
      else
        format.html { render :action => "new" }
        format.json { render :json => @event_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /event_entries/1
  # PUT /event_entries/1.json
  def update
    @event_entry = EventEntry.find(params[:id])

    respond_to do |format|
      if @event_entry.update_attributes(params[:event_entry])
        format.html { redirect_to @event_entry, :notice => 'Event entry was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @event_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /event_entries/1
  # DELETE /event_entries/1.json
  def destroy
    @event_entry = EventEntry.find(params[:id])
    @event_entry.destroy

    respond_to do |format|
      format.html { redirect_to event_entries_url }
      format.json { head :ok }
    end
  end
end
