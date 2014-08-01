require 'rspec'
require 'address'
require 'phone'
require 'email'
require 'contact_address'

describe 'Contact' do
  before do
    Contact.clear
  end

  it 'is initialized with a contact' do
    new_contact = Contact.new 'John Doe'
    new_contact.name.should eq 'John Doe'
  end

  it 'allows users to add contacts' do
    new_contact = Contact.new 'John Doe'
    new_contact.add_contact.should eq [new_contact]
  end

  it 'allows users to store a contact phone number' do
    new_contact = Contact.new 'John Doe'
    new_number = Phone.new '503-333-3333'
    new_contact.number_input(new_number)
    new_contact.phones[0].number.should eq '503-333-3333'
  end

  it 'allows users to store a contact email' do
    new_contact = Contact.new 'John Doe'
    new_email = Email.new 'john.doe@aol.com'
    new_contact.email_input(new_email)
    new_contact.emails[0].addy.should eq 'john.doe@aol.com'
  end

  it 'allows users to store a contact address' do
    new_contact = Contact.new 'John Doe'
    new_address = Address.new '123 Main St.'
    new_contact.address_input(new_address)
    new_contact.addresses[0].address.should eq '123 Main St.'
  end

  # it 'allows users to edit contacts' do
  #   new_contact = Contact.new 'John Doe'
  #   new_contact.add_contact.should eq [new_contact]
  # end

  describe '.all' do
    it 'creates an empty array' do
      Contact.clear
      Contact.all.should eq []
    end
  end

  describe '.clear' do
    it 'empties the contact array' do
      Contact.all.should eq []
    end
  end

  describe 'Phone' do
    it 'is initialized with a phone number' do
      new_phone = Phone.new '503-456-9333'
      new_phone.number.should eq '503-456-9333'
    end
  end

  describe 'Email' do
    it 'is initialized with a new e-mail' do
      new_email = Email.new 'john.doe@aol.com'
      new_email.addy.should eq 'john.doe@aol.com'
    end
  end

  describe 'Address' do
    it 'is initialized wth an address' do
      new_address = Address.new '123 Main St.'
      new_address.address.should eq '123 Main St.'
    end
  end
end
