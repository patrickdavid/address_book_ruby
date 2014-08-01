class Address
  def initialize(address)
    @address = address
  end

  def address
    @address
  end

  def address_input(address)
    @contact_info << address
  end
end
