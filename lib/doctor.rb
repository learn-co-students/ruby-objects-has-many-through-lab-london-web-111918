class Doctor
  attr_accessor :name, :patient, :date, :appointment

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

# given a date and a patient, creates a new appointment
  def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end

# has many appointments
  def appointments
    Appointment.all
  end

# def patients has many patients, through appointments
def patients
  Appointment.all.map {|app| app.patient}
end


end
