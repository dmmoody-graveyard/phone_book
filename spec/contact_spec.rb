require('rspec')
require('contact')

describe(Contact) do

  before() do
    Contact.clear()
  end
  
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

  describe('.all') do
    it('will return all contacts in contact list') do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of the contact') do
      new_contact = Contact.new({:name => 'Duane Moody', :phone_number => '971-678-9823'})
      expect(new_contact.id()).to(eq(1))
    end
  end

  describe('#save') do
    it("will save contact to contact list") do
      new_contact = Contact.new({:name => 'Duane Moody', :phone_number => '971-678-9823'})
      new_contact.save()
      expect(Contact.all()).to(eq([new_contact]))
    end
  end

  describe('.clear') do
    it('will clear contact list of all elements') do
      new_contact = Contact.new({:name => 'Duane Moody', :phone_number => '971-678-9823'})
      new_contact.save()
      expect(Contact.clear()).to(eq([]))
    end
  end

  describe('.find_id') do
    it('will find a contact by id number') do
      new_contact1 = Contact.new({:name => 'Duane Moody', :phone_number => '971-678-9823'})
      new_contact1.save()
      new_contact2 = Contact.new({:name => 'Steve Two Two', :phone_number => '971-678-6077'})
      new_contact2.save()
      expect(Contact.find_id(new_contact1.id())).to(eq(new_contact1))
    end
  end

  describe('.find_contact') do
    it('will find a contact by name') do
      new_contact1 = Contact.new({:name => 'Duane Moody', :phone_number => '971-678-9823'})
      new_contact1.save()
      new_contact2 = Contact.new({:name => 'Steve Two Two', :phone_number => '971-678-6077'})
      new_contact2.save()
      expect(Contact.find_contact(new_contact1.name())).to(eq(new_contact1))
    end
  end
end