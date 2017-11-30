class Plant < ApplicationRecord
  before_save :define_status

  def message
    return "You win! Your plant is 10 inches tall!" if height >= 10
    return "Your plant is dead! Why did you kill your plant?! YOU MURDERER" unless self.alive?
    "Your plant is #{height} #{"inch".pluralize(height)} tall!"
  end

  def define_status
    self.alive = false if \
      over_exposed? ||
      over_fertilized? ||
      over_watered?
  end

  def over_fertilized?
    number_of_nutrients / number_of_waterings >= 4
  end

  def over_exposed?
    number_of_sunnings / number_of_waterings >= 4
  end

  def over_watered?
    number_of_waterings / number_of_sunnings >= 4
  end

  def height
    inches = 0
    inches +=  number_of_waterings / 2
    inches += number_of_sunnings / 2
    inches += number_of_nutrients / 2
    inches
  end

  def water
    self.number_of_waterings += 1
    self.save
  end

  def sun
    self.number_of_sunnings += 1
    self.save
  end

  def fertilize
    self.number_of_nutrients += 1
    self.save
  end
end
