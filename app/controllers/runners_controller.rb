class RunnersController < ApplicationController
  # GET /runners
  # GET /runners.json
  def index
    @runners = Runner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @runners }
    end
  end

  # GET /runners/1
  # GET /runners/1.json
  def show
    @runner = Runner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @runner }
    end
  end

  # GET /runners/new
  # GET /runners/new.json
  def new
    @runner = Runner.new
    @team = Team.find(params[:team_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @runner }
    end
  end

  # GET /runners/1/edit
  def edit
    @runner = Runner.find(params[:id])
  end

  # POST /runners
  # POST /runners.json
  def create
    @team = Team.find(params[:team_id])
    @runner = @team.runners.build(params[:runner])
    @runner.team_id = @team.id

    respond_to do |format|
      if @runner.save
        format.html { redirect_to @team, :notice => 'Runner was successfully created.' }
        format.json { render :json => @team, :status => :created, :location => @team}
      else
        format.html { render :action => "new" }
        format.json { render :json => @runner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /runners/1
  # PUT /runners/1.json
  def update
    @runner = Runner.find(params[:id])
    @team = Team.find(params[:team_id])
    respond_to do |format|
      if @runner.update_attributes(params[:runner])
        format.html { redirect_to @runner, :notice => 'Runner was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @runner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /runners/1
  # DELETE /runners/1.json
  def destroy
    @runner = Runner.find(params[:id])
    @runner.destroy
    @team = Team.find(@runner.team_id)

    respond_to do |format|
      format.html { redirect_to @team }
      format.json { head :ok }
    end
  end
end
