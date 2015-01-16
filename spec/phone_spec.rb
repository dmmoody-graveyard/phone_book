require('rspec')
require('phone')

describe(Phone) do
  
  describe('#phone') do
    it('takes a phone and number and returns value of phone') do
      new_phone = Phone.new({:phone => 'mobile', :number => '971-678-9823'})
      expect(new_phone.phone()).to(eq('mobile'))
    end
  end

end