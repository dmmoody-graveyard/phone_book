class Phone
  
  @@phones = []

  attr_reader(:phone_type, :number)

  define_method(:initialize) do |attributes|
    @phone_type = attributes.fetch(:phone_type)
    @number = attributes.fetch(:number)
  end

  define_method(:phone) do
    @phone_type
  end

  define_singleton_method(:all) do
    @@phones
  end

end