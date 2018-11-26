class Appointment
  
  attr_accessor :doctor, :patient, :date
  
  @@all = []
  
  def initialize(doctor, patient, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end