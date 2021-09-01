class AppointmentRepresenter
  def initialize(appointment)
    @appointment = appointment
  end

  def as_json
    {
      id: appointment.id,
      # user: appointment.user.attributes.slice(),
      agent: appointment.property.agent.attributes.slice('first_name', 'last_name', 'email', 'number', 'picture'),
      property: appointment.property.attributes.slice('id', 'name', 'picture', 'price', 'address'),
      date: appointment.date
    }
  end

  private

  attr_reader :appointment
end
