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
end

describe 'Phone' do
  before do
    Phone.clear
  end

  it 'is initialized with a phone number' do
    new_phone = Phone.new '503-456-9333'
    new_phone.phone_add
    new_phone.all_phones.should eq ['503-456-9333']
  end
end

describe '.clear' do
  it 'clears all the phone numbers' do
    @@all_phone_numbers = []
  end
end

describe '.all' do
  it 'stores all the phone numbers' do
    Phone.clear
    Phone.all.should eq []
  end
end

describe 'Email' do
  before do
    Email.clear
  end

  it 'is initialized with an email address' do
    new_email = Email.new 'john.doe@aol.com'
    new_email.email_add
    new_email.all_emails.should eq ['john.doe@aol.com']
  end
end

describe '.clear' do
  it 'clears all the emails' do
    @@all_emails = []
  end
end

describe '.all' do
  it 'stores all the ' do
    Email.clear
    Email.all.should eq []
  end
end

describe 'Address' do
  before do
    Address.clear
  end

  it 'is initialized with an address' do
    new_address = Address.new '123 Main st'
    new_address.address_add
    new_address.all_address.should eq ['123 Main st']
  end
end

describe '.clear' do
  it 'clears all the address' do
    @@all_address = []
  end
end

describe '.all' do
  it 'stores all the ' do
    Address.clear
    Address.all.should eq []
  end
end
