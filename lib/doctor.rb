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
    Appointment.new(self, patient, date)
  end

  def appointments
    Appointment.all.select do |date| date.date
    end
  end

  def patients
    appointments.collect do |date| date.patient
    end
  end
end
