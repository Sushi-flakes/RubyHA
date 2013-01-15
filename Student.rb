class Student
	def initialize name, firstName, number
		@name = name
		@firstName = firstName
		@number = number
		@studium
		@fsemester
		@ssemester
		@veranstaltungen = Array.new
	end
	
	def addVeranstaltung veranstaltung
		@veranstaltungen << veranstaltung
	end
	
	def getVeranstaltungen
		return @veranstaltungen
	end
	
	def setStudium studium
		@studium = studium
		@ssemester = studium.getDuration
	end
	
	def setFsemester fsemester
		@fsemester = fsemester
	end
	
	def setSsemester ssemester
		@ssemester = ssemester
	end
	
	def getNumber
		return @number
	end
	
	def to_s
		puts "#{@name}, #{@firstName}:"
		puts ""
		puts "Matrikel-Nr.:		#{@number}"
		puts "Studiengang:"
		puts "#{@studium.to_s}"
		puts "Fachsemester:		#{@fsemester}"
		puts "Studiensemester:	#{@ssemester}"
		puts "Veranstaltungen:"
		puts "#{@veranstaltungen.to_s}"
	end
end

class Veranstaltung
	def initialize title, short, dozent
		@title = title
		@short = short
		@dozent = dozent
		@passed = false
		@grade
		@semester
	end
	
	def to_s
		puts "#{@title} (#{@short}) bei #{@dozent}:"
		if @passed == true
			puts "Bestanden mit : #{@grade}"
		else
			puts "Noch nicht bestanden"
		end
	end
end

class Studiengang
	def initialize short, duration
		@short = short
		@duration = duration
	end
	
	def getShort
		return @short
	end
	
	def getDuration
		return @duration
	end
	
	def to_s
		puts "#{@short}:			#{@duration}"
	end
end