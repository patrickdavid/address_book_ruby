class Address
  @@all_address= []

  def Address.clear
    @@all_address = []
  end

  def Address.all
    @@all_address
  end

  def initialize(address)
    @address = address
    @all_address = []
  end

  def address_add
    @all_address << @address
  end

  def all_address
    @all_address
  end

  def address
    @address
  end
end
