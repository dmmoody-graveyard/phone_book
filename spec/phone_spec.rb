require('rspec')
require('phone')

describe(Phone) do

  before() do
    Phone.clear()
  end
  
  describe('#phone_type') do
    it('takes a phone_type and number and returns value of phone_type') do
      new_phone = Phone.new({:phone_type => 'mobile', :number => '971-678-9823'})
      expect(new_phone.phone_type()).to(eq('mobile'))
    end
  end

  describe('#number') do
    it('takes a phone_type and number and returns value of number') do
      new_phone = Phone.new({:phone_type => 'mobile', :number => '971-678-9823'})
      expect(new_phone.number()).to(eq('971-678-9823'))
    end
  end

  describe('#id') do
    it('returns phone id') do
      new_phone = Phone.new({:phone_type => 'mobile', :number => '971-678-9823'})
      expect(new_phone.id()).to(eq(1))
    end
  end

  describe('.all') do
    it('return all phones') do
      new_phone = Phone.new({:phone_type => 'mobile', :number => '971-678-9823'})
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('save phone in Phone phone list') do
      new_phone = Phone.new({:phone_type => 'mobile', :number => '971-678-9823'})
      new_phone.save()
      expect(Phone.all()).to(eq([new_phone]))
    end
  end

  describe('.clear')  do
    it('clear list phones') do
      new_phone = Phone.new({:phone_type => 'mobile', :number => '971-678-9823'})
      new_phone.save()
      expect(Phone.clear()).to(eq([]))
    end
  end

end