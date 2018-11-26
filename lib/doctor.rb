require 'pry'
class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
    appointment
  end

  def appointments
    appointments = Appointment.all.select {|appt| appt.doctor == self}
    appointments
  end

  def patients
    appointments.map {|appt| appt.patient}
  end

end
