class Patient
    @@all = []

    attr_accessor :name

    def initialize (name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def new_appointment(doctor,date)
        Appointment.new(date,self,doctor)
    end

    def appointments
        Appointment.all.select {|appts| appts.patient == self}
    end

    def doctors
        self.appointments.collect{|appts| appts.doctor}
    end
end