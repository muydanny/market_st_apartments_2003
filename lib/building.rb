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
  end

  def add_renter(tenant)
    @renters << tenant
  end

  def average_rent(rent)
    @units.select do |unit|
      unit.rent == rent
    end
    @monthly_rent.to_f / 2
  end

end
