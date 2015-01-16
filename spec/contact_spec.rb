require('rspec')
require('contact')

describe(Contact) do
  
  describe('#name') do
    it('will take name and phone_number as hash and return name') do
      new_contact = Contact.new({:name => 'Duane Moody', :phone_number => '971-678-9823'})
      expect(new_contact.name()).to(eq("Duane Moody"))
    end
  end

  describe('#phone_number') do
    it('will take name and phone_number as hash and return phone_number') do
      new_contact = Contact.new({:name => 'Duane Moody', :phone_number => '971-678-9823'})
      expect(new_contact.phone_number()).to(eq("971-678-9823"))
    end
  end
end