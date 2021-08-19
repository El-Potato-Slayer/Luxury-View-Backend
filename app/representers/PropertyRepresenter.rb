class PropertyRepresenter
  def initialize(property)
    @property = property
  end
  def as_json
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
  private
  attr_reader :property
 end