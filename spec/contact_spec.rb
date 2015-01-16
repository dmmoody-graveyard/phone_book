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

  describe('#all') do
    it('will return all contacts in contact list') do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("will save contact to contact list") do
      new_contact = Contact.new({:name => 'Duane Moody', :phone_number => '971-678-9823'})
      new_contact.save()
      expect(Contact.all()).to(eq(new_contact))
    end
  end
end