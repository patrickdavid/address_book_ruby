require 'rspec'
require 'address'

describe 'Contact' do
  it 'is initialied with a contact' do
    new_contact = Contact.new 'John Doe'
    new_contact.name.should eq 'John Doe'
  end
end
#   it 'creates an empty array' do
#     Address_Book.should eq []
#   end
# end
