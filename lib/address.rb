class Contact
  @@all_contacts = []

  def Contact.all
    @@all_contacts
  end

  def Contact.clear
    @@all_contacts = []
  end

  def initialize(name)
    @name = name
    @phones = []
  end

  def name
    @name
  end

  def phones
    @phones
  end

  def add_contact
    @@all_contacts << self
  end

  def number_input(number)
    @phones << number
  end
end
