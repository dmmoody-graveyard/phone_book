require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/contact')
require('./lib/phone')

get('/') do
  @contacts = Contact.all()
  erb(:index)
end

get('/contact_details/:contact_id') do
  @contact = Contact.find_id(params.fetch('contact_id').to_i())
  erb(:contact_details)
end

get('/add_contact') do
  erb(:add_contact_form)
end

post('/contact_success') do
  new_contact = Contact.new(params.fetch('name'))
  new_contact.save()
  redirect('/')
end

post('/phone_success') do
  phone_type = params.fetch('phone_type')
  number = params.fetch('number')
  contact_id = params.fetch('contact_id').to_i()
  new_phone = Phone.new({:type => phone_type, :number => number})
  new_phone.save()
  redirect('/contact_details/:contact_id')
end
