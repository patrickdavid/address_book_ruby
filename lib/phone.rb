class Phone
  @@all_phone_numbers = []

  def Phone.clear
    @@all_phone_numbers = []
  end

  def Phone.all
    @@all_phone_numbers
  end

  def initialize(number)
    @number = number
    @all_phones = []
  end

  def phone_add
    @all_phones << @number
  end

  def all_phones
    @all_phones
  end

  def number
    @number
  end
end
