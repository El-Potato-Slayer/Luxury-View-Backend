class PropertiesRepresenter
  def initialize(properties)
    @properties = properties
  end

  def as_json
    properties.map do |property|
      {
        id: property.id,
        name: property.name,
        description: property.description,
        price: property.price,
        address: property.address,
        floor_area: property.floor_area,
        land_area: property.land_area,
        agent: property.agent
        # category: Category.find(book.id).name,
      }
    end
  end

  private

  attr_reader :properties
end
