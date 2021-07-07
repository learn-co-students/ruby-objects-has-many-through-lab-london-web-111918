require 'pry'
class Patient

  attr_accessor :name, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
    appointment
  end

  def appointments
    appointments = Appointment.all.select {|appt| appt.patient == self}
    appointments
  end

  def self.all
    @@all
  end

  def doctors
    appointments.map{|appt| appt.doctor}
  end
end
