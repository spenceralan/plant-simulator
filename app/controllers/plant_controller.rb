class PlantController < ApplicationController

  def show
    @plant = Plant.find_or_create_by(id: session[:plant_id])
    session[:plant_id] = @plant.id
  end

  def new
    @plant = Plant.create
    session[:plant_id] = @plant.id
    respond_to do |format|
      format.js {
        flash[:action] = "You started over! The plant is new!"
      }
    end
  end

  def water
    @plant = Plant.find_by(id: session[:plant_id])
    @plant.water
    respond_to do |format|
      format.js {
        flash[:action] = "You watered the plant!"
      }
    end
  end

  def sun
    @plant = Plant.find_by(id: session[:plant_id])
    @plant.sun
    respond_to do |format|
      format.js {
        flash[:action] = "You gave the plant some light!"
      }
    end
  end

  def fertilize
    @plant = Plant.find_by(id: session[:plant_id])
    @plant.fertilize
    respond_to do |format|
      format.js {
        flash[:action] = "You fertilized the plant!"
      }
    end
  end
end