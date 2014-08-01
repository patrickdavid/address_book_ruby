class Email
  @@all_email_numbers = []

  def Email.clear
    @@all_email_numbers = []
  end

  def Email.all
    @@all_email_numbers
  end

  def initialize(addy)
    @addy = addy
    @all_emails = []
  end

  def email_add
    @all_emails << @addy
  end

  def all_emails
    @all_emails
  end

  def addy
    @addy
  end
end
