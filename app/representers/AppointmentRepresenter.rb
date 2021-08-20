class AppointmentRepresenter
  def initialize(appointment)
    @appointment = appointment
  end

  def as_json
    {
      id: appointment.id,
      user: appointment.user,
      property: appointment.property,
      date: appointment.date
    }
  end

  private
  attr_reader :appointment
end
