class Contact

  @@contacts = []
  attr_reader(:name, :phone_numbers)

  define_method(:initialize) do |name|
    @name = name
    @phone_numbers = []
    @id = @@contacts.length.+(1)
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:find_id) do |id|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id().eql?(id.to_i)
        found_contact = contact
      end
    end
    found_contact
  end

  define_singleton_method(:find_contact) do |name|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.name().eql?(name)
        found_contact = contact
      end
    end
    found_contact
  end

end