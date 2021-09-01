class AppointmentsRepresenter
  def initialize(appointments)
    @appointments = appointments
  end

  def as_json
    appointments.map do |appointment|
      {
        id: appointment.id,
        # user: appointment.user,
        agent: appointment.property.agent.attributes.slice('first_name', 'last_name', 'email', 'number', 'picture'),
        property: appointment.property.attributes.slice('id', 'name', 'picture', 'price', 'address'),
        date: appointment.date
      }
    end
  end

  private

  attr_reader :appointments
end
