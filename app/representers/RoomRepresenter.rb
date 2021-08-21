class RoomRepresenter
  def initialize(room)
    @room = room
  end

  def as_json
    {
      id: room.id,
      name: room.name,
      amount: room.amount,
      property: room.property
    }
  end

  private

  attr_reader :room
end
