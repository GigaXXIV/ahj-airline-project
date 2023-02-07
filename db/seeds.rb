# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plane.destroy_all

p1 = Plane.create name: "747", rows: 10, cols: "ABCD"
p2 = Plane.create name: "757", rows: 10, cols: "ABCD"
p3 = Plane.create name: "767", rows: 10, cols: "ABCD"

puts "#{Plane.count} planes created"

User.destroy_all

u1 = User.create name: "user", admin: false
u2 = User.create name: "admin", admin: true

puts "#{User.count} users created"

Flight.destroy_all

f1 =
  Flight.create flightno: "23",
                origin: "JFK",
                destination: "SFO",
                date: "2013-03-01"

f2 =
  Flight.create flightno: "87",
                origin: "JFK",
                destination: "LAX",
                date: "2013-03-03"

f3 =
  Flight.create flightno: "09",
                origin: "JFK",
                destination: "SFO",
                date: "2013-03-08"

puts "#{Flight.count} flights created"

Reservation.destroy_all

r1 = Reservation.create
r2 = Reservation.create
r3 = Reservation.create
r4 = Reservation.create
r5 = Reservation.create

# ASSOCIATIONS

puts "Planes and Flights"

p1.flights << f1
p2.flights << f2
p3.flights << f3

puts "Planes and Flights Associated"

puts "Users and Reservations"

u1.reservations << r1 << r2 << r3
u2.reservations << r4 << r5

puts "Users and Reservations Associated"

puts "Flights and Reservations"

f1.reservations << r1
f2.reservations << r2 << r4
f3.reservations << r3 << r5

puts "Flights and Reservations Associated"
