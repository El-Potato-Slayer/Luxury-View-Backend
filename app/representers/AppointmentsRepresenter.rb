class AppointmentsRepresenter
  def initialize(appointments)
    @appointments = appointments
  end

  def as_json
    appointments.map do |appointment|
      {
        id: appointment.id,
        user: appointment.user,
        property: appointment.property,
        date: appointment.date
      }
    end
  end

  private

  attr_reader :appointments
end
