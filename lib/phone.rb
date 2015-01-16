class Phone
  
  @@phones = []

  attr_reader(:phone_type, :number)

  define_method(:initialize) do |attributes|
    @phone_type = attributes.fetch(:phone_type)
    @number = attributes.fetch(:number)
    @id = @@phones.length().+(1)
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@phones
  end

  define_method(:save) do
    @@phones.push(self)
  end

  define_singleton_method(:clear) do
    @@phones = []
  end

end