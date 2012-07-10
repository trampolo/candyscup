class TeamPlayerDaysController < ApplicationController
  # GET /team_player_days
  # GET /team_player_days.json
  def index
    @team_player_days = TeamPlayerDay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @team_player_days }
    end
  end

  # GET /team_player_days/1
  # GET /team_player_days/1.json
  def show
    @team_player_day = TeamPlayerDay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @team_player_day }
    end
  end

  # GET /team_player_days/new
  # GET /team_player_days/new.json
  def new
    @team_player_day = TeamPlayerDay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @team_player_day }
    end
  end

  # GET /team_player_days/1/edit
  def edit
    @team_player_day = TeamPlayerDay.find(params[:id])
  end

  # POST /team_player_days
  # POST /team_player_days.json
  def create
    @team_player_day = TeamPlayerDay.new(params[:team_player_day])

    respond_to do |format|
      if @team_player_day.save
        format.html { redirect_to @team_player_day, notice: 'Team player day was successfully created.' }
        format.json { render json: @team_player_day, status: :created, location: @team_player_day }
      else
        format.html { render action: "new" }
        format.json { render json: @team_player_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /team_player_days/1
  # PUT /team_player_days/1.json
  def update
    @team_player_day = TeamPlayerDay.find(params[:id])

    respond_to do |format|
      if @team_player_day.update_attributes(params[:team_player_day])
        format.html { redirect_to @team_player_day, notice: 'Team player day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @team_player_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_player_days/1
  # DELETE /team_player_days/1.json
  def destroy
    @team_player_day = TeamPlayerDay.find(params[:id])
    @team_player_day.destroy

    respond_to do |format|
      format.html { redirect_to team_player_days_url }
      format.json { head :no_content }
    end
  end
end
