class PlantController < ApplicationController
  def new
    respond_to do |format|
      format.js {
        flash[:action] = "You started over! The plant is a new!"
      }
    end
  end

  def water
    respond_to do |format|
      format.js {
        flash[:action] = "You watered the plant!"
      }
    end
  end

  def sun
    respond_to do |format|
      format.js {
        flash[:action] = "You gave the plant some light!"
      }
    end
  end

  def fertilize
    respond_to do |format|
      format.js {
        flash[:action] = "You fertilized the plant!"
      }
    end
  end
end