class Contact

  @@contact_list = []
  attr_reader(:name, :phone_number)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @phone_number = attributes.fetch(:phone_number)
  end

  define_singleton_method(:all) do
    @@contact_list
  end

  define_singleton_method(:add_contact) do
    @@contact_list.push(self)
  end
end