class Apartment
  attr_reader :number,
              :monthly_rent,
              :bathrooms,
              :renter


  def initialize(apartment_info)
    @number = apartment_info[:number]
    @monthly_rent = apartment_info[:monthly_rent]
    @bathrooms = apartment_info[:bathrooms]
    @renter = nil
  end

  def add_renter(renter)
    @renter = renter
  end
end
