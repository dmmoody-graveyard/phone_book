require('rspec')
require('phone')

describe(Phone) do
  
  describe('#phone') do
    it('takes a phone_type and number and returns value of phone_type') do
      new_phone = Phone.new({:phone_type => 'mobile', :number => '971-678-9823'})
      expect(new_phone.phone()).to(eq('mobile'))
    end
  end

end