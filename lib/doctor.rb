class Doctor

    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def new_appointment(patient,date)
        Appointment.new(date,patient,self)
    end

    def appointments
        Appointment.all.select {|appts| appts.doctor == self}
    end

    def patients
        self.appointments.collect {|appts| appts.patient}
    end
end