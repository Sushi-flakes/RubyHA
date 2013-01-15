require '.\Student.rb'

studenten = Hash.new
a = Student.new("Mustermann", "Max", 12345)
b = Student.new("Sorglos", "Susi", 66666)
c = Student.new("Li", "Muhammed", 11880)

o = Veranstaltung.new("Programmieren", "prg", "Bjoern Jensen")
p = Veranstaltung.new("Explodieren mit Stil", "EmS", "Mensulon der Gefuerchtete")
q = Veranstaltung.new("Nichts tun, aber richtig", "Nt", "Niemandem")
r = Veranstaltung.new("Eroberungen fuer Anfaenger", "EfA", "Julius Caesar")

a.setFsemester(1)
b.setFsemester(5)
c.setFsemester(83)

m = Studiengang.new("MS", 5)
n = Studiengang.new("MT", 6)

a.setStudium(m)
b.setStudium(n)
c.setStudium(m)

a.addVeranstaltung(o)
a.addVeranstaltung(r)
b.addVeranstaltung(p)
b.addVeranstaltung(q)
b.addVeranstaltung(r)
c.addVeranstaltung(q)
c.addVeranstaltung(p)

studenten[a.getNumber] = a
studenten[b.getNumber] = b
studenten[c.getNumber] = c
puts studenten

def showAll
	studenten.each_value do |s|
		puts "#{s.getNumber}:"
		kurse = 0
		s.getVeranstaltungen.each do |v|
			if v.bestanden == false
				kurse += 1
			end
		end
		puts "Offene Scheine: #{kurse}"
		if s.getFsemester <= s.getSsemester
			puts "In der Regelstudienzeit?		Ja"
		else
			puts "In der Regelstudienzeit?		Nein"
		end
	end
end