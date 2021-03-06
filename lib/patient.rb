class Patient
  attr_accessor :appointments, :doctors
  attr_reader :name
  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    @doctors << appointment.doctor
    appointment.patient = self
    appointment.doctor.patients << self
  end
end
