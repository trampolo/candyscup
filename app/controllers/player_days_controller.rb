class PlayerDaysController < ApplicationController
  # GET /player_days
  # GET /player_days.json
  def index
    @player_days = PlayerDay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @player_days }
    end
  end

  # GET /player_days/1
  # GET /player_days/1.json
  def show
    @player_day = PlayerDay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player_day }
    end
  end

  # GET /player_days/new
  # GET /player_days/new.json
  def new
    @player_day = PlayerDay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player_day }
    end
  end

  # GET /player_days/1/edit
  def edit
    @player_day = PlayerDay.find(params[:id])
  end

  # POST /player_days
  # POST /player_days.json
  def create
    @player_day = PlayerDay.new(params[:player_day])

    respond_to do |format|
      if @player_day.save
        format.html { redirect_to @player_day, notice: 'Player day was successfully created.' }
        format.json { render json: @player_day, status: :created, location: @player_day }
      else
        format.html { render action: "new" }
        format.json { render json: @player_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /player_days/1
  # PUT /player_days/1.json
  def update
    @player_day = PlayerDay.find(params[:id])

    respond_to do |format|
      if @player_day.update_attributes(params[:player_day])
        format.html { redirect_to @player_day, notice: 'Player day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @player_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_days/1
  # DELETE /player_days/1.json
  def destroy
    @player_day = PlayerDay.find(params[:id])
    @player_day.destroy

    respond_to do |format|
      format.html { redirect_to player_days_url }
      format.json { head :no_content }
    end
  end
end
