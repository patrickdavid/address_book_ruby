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
    @emails = []
    @addresses = []
  end

  def name
    @name
  end

  def phones
    @phones
  end

  def addresses
    @addresses
  end

  def emails
    @emails
  end

  def add_contact
    @@all_contacts << self
  end

  def number_input(number)
    @phones << number
  end

  def email_input(email)
    @emails << email
  end

  def address_input(address)
    @addresses << address
  end
end
