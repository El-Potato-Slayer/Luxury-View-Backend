class PropertyRepresenter
  def initialize(property)
    @property = property
  end

  def as_json
    {
      id: property.id,
      name: property.name,
      description: property.description,
      picture: property.picture,
      price: property.price,
      address: property.address,
      floor_area: property.floor_area,
      land_area: property.land_area,
      agent: property.agent,
      rooms: property.rooms.exclude_property_id
    }
  end

  private

  attr_reader :property
end
