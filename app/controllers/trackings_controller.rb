class TrackingsController < ApplicationController

  def index
    respond_to do |format|
      format.html
    end
  end

  # Initial creating of route
  def init_route
    session_id = request.session_options[:id]

    initial_position = Position.new(params)

    initial_position.a_timestamp = DateTime.now

    if initial_position.save
      # sucessfull creation
      render json: initial_position, only: ["id"]

    else
      # problem initializing
    end
  end

  def update_position

    # set :remaining_km, :tremaining_time, :actual_pois
    if actual_position.update_attributes(:attr => '')
      # sucessfull updated
    end


  end

  def show
  end


#  t.integer :total_km
#  t.integer :remaining_km
#  t.timestamp :a_timestamp
#  t.integer :remaining_time
#  t.decimal :a_poi_lat, :precision => 10, :scale => 7
#  t.decimal :a_poi_lng, :precision => 10, :scale => 7
#  t.decimal :b_poi_lat, :precision => 10, :scale => 7
#  t.decimal :b_poi_lng, :precision => 10, :scale => 7
#  t.decimal :actual_poi_lat, :precision => 8, :scale => 7
#  t.decimal :actual_poi_lng, :precision => 8, :scale => 7


end