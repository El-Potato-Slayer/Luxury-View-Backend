class RoomsRepresenter
  def initialize(rooms)
    @rooms = rooms
  end

  def as_json
    rooms.map do |room|
      {
        id: room.id,
        name: room.name,
        amount: room.amount,
        property: room.property
      }
    end
  end

  private

  attr_reader :rooms
end
