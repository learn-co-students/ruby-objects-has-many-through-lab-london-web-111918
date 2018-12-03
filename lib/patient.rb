class Patient
  attr_accessor :name, :appointment, :doctor, :date

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

 # given a doctor and date, creates a new appointment belonging to that patient
  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end


# def appointments has many doctors through appointments
def appointments
  Appointment.all.map {|appointment| appointment}
end

# def doctors has many doctors through appointments
def doctors
  Appointment.all.map {|appointment| appointment.doctor}
end

end
