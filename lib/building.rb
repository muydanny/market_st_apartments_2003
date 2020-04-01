class Building
  attr_reader :units,
              :renters,
              :rented_units


  def initialize
    @units = []
    @renters = find_all_renters
    @rented_units = []
  end

  def add_unit(building_unit)
    @units << building_unit
    # require "pry"; binding.pry
  end

  def find_all_renters
    #iterate over units. Put unit.renter into
    #new array. Could use map
    
  end

  def average_rent
    @units.sum(&:monthly_rent) / 2.0
  end

end
