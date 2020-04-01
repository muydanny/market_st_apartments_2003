require './lib/apartment'

class Building
  attr_reader :units,
              :renters,
              :rented_units


  def initialize
    @units = []
    @renters = []
    @rented_units = []
  end

  def add_unit(building_unit)
    @units << building_unit
    # require "pry"; binding.pry
  end

  def renters
    units.map do |unit|
      @renters << unit.renter
      require "pry"; binding.pry  # @renters << @renter
    end
    @renters
  end
  #nested interation
  #iterate over units. Put unit.renter into
  #new array. Could use map


  def average_rent
    @units.sum(&:monthly_rent) / 2.0
  end

end
