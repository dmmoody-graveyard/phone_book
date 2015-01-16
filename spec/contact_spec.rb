require('rspec')
require('contact')
require('phone')

describe(Contact) do

  before() do
    Contact.clear()
  end
  
  describe('#name') do
    it('will take name and phone_number as hash and return name') do
      new_contact = Contact.new('Duane Moody')
      expect(new_contact.name()).to(eq("Duane Moody"))
    end
  end

  describe('#phone_numbers') do
    it('will take name and phone_number as hash and return phone_number') do
      new_contact = Contact.new('Duane Moody')
      expect(new_contact.phone_numbers()).to(eq([]))
    end
  end

  describe('.all') do
    it('will return all contacts in contact list') do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of the contact') do
      new_contact = Contact.new('Duane Moody')
      expect(new_contact.id()).to(eq(1))
    end
  end

  describe('#save') do
    it("will save contact to contact list") do
      new_contact = Contact.new('Duane Moody')
      new_contact.save()
      expect(Contact.all()).to(eq([new_contact]))
    end
  end

  describe('.clear') do
    it('will clear contact list of all elements') do
      new_contact = Contact.new('Duane Moody')
      new_contact.save()
      expect(Contact.clear()).to(eq([]))
    end
  end

  describe('.find_id') do
    it('will find a contact by id number') do
      new_contact1 = Contact.new('Duane Moody')
      new_contact1.save()
      new_contact2 = Contact.new('Duane Moody')
      new_contact2.save()
      expect(Contact.find_id(new_contact1.id())).to(eq(new_contact1))
    end
  end

  describe('.find_contact') do
    it('will find a contact by name') do
      new_contact1 = Contact.new('Duane Moody')
      new_contact1.save()
      new_contact2 = Contact.new('Steve Two Two')
      new_contact2.save()
      expect(Contact.find_contact(new_contact1.name())).to(eq(new_contact1))
    end
  end

  describe('#add_phone_numbers') do
    it('will add_phone_numbers to contact list') do
      new_contact = Contact.new('Duane Moody')
      new_phone = Phone.new({:phone_type => 'mobile', :number => '971-678-9823'})
      new_contact.add_phone_numbers(new_phone)
      expect(new_contact.phone_numbers()).to(eq([new_phone]))
    end
  end

end