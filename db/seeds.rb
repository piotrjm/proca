# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email 

role = CreateRoleService.new.role_admin
puts 'CREATED ROLE: ' << role.name
user.roles << role
puts "ADD ROLE: #{role.name}   TO USER: #{user.email}"

role = CreateRoleService.new.role_observer
puts 'CREATED ROLE: ' << role.name


role = CreateRoleService.new.user_admin
puts 'CREATED ROLE: ' << role.name
user.roles << role
puts "ADD ROLE: #{role.name}   TO USER: #{user.email}"

role = CreateRoleService.new.user_observer
puts 'CREATED ROLE: ' << role.name


role = CreateRoleService.new.user_attachment_admin
puts 'CREATED ROLE: ' << role.name

role = CreateRoleService.new.user_attachment_observer
puts 'CREATED ROLE: ' << role.name


role = CreateRoleService.new.customer_admin
puts 'CREATED ROLE: ' << role.name

role = CreateRoleService.new.customer_observer
puts 'CREATED ROLE: ' << role.name

role = CreateRoleService.new.project_admin
puts 'CREATED ROLE: ' << role.name

role = CreateRoleService.new.project_observer
puts 'CREATED ROLE: ' << role.name


role = CreateRoleService.new.project_attachment_admin
puts 'CREATED ROLE: ' << role.name

role = CreateRoleService.new.project_attachment_observer
puts 'CREATED ROLE: ' << role.name


role = CreateRoleService.new.project_point_file_admin
puts 'CREATED ROLE: ' << role.name

role = CreateRoleService.new.project_point_file_observer
puts 'CREATED ROLE: ' << role.name


role = CreateRoleService.new.event_admin
puts 'CREATED ROLE: ' << role.name

role = CreateRoleService.new.event_observer
puts 'CREATED ROLE: ' << role.name


role = CreateRoleService.new.event_attachment_admin
puts 'CREATED ROLE: ' << role.name

role = CreateRoleService.new.event_attachment_observer
puts 'CREATED ROLE: ' << role.name


role = CreateRoleService.new.comment_admin
puts 'CREATED ROLE: ' << role.name

role = CreateRoleService.new.comment_observer
puts 'CREATED ROLE: ' << role.name

role = CreateRoleService.new.rating_admin
puts 'CREATED ROLE: ' << role.name

role = CreateRoleService.new.rating_observer
puts 'CREATED ROLE: ' << role.name


role = CreateRoleService.new.accessorization_manager
puts 'CREATED ROLE: ' << role.name

role = CreateRoleService.new.accessorization_observer
puts 'CREATED ROLE: ' << role.name

role = CreateRoleService.new.role_for_event_observer
puts 'CREATED ROLE: ' << role.name

role = CreateRoleService.new.role_for_event_performer
puts 'CREATED ROLE: ' << role.name



# Simple User 1
user = CreateAdminService.new.call_simple('krzysztof.frydrych@uke.gov.pl', 'Krzysztof Frydrych', '1qazXSW@', '')
puts 'CREATED SIMPLE USER: ' << user.email

# Simple User 2
user = CreateAdminService.new.call_simple('michal.lassa@uke.gov.pl', 'Michał Łassa', '1qazXSW@', '')
puts 'CREATED SIMPLE USER: ' << user.email

# Simple User 3
user = CreateAdminService.new.call_simple('mariusz.krupa@uke.gov.pl', 'Mariusz Krupa', '1qazXSW@', '')
puts 'CREATED SIMPLE USER: ' << user.email

# Simple User 4
user = CreateAdminService.new.call_simple('marcin.dudek@uke.gov.pl', 'Marcin Dudek', '1qazXSW@', '')
puts 'CREATED SIMPLE USER: ' << user.email

# Simple User 5
user = CreateAdminService.new.call_simple('piotr.majewski@uke.gov.pl', 'Piotr Majewski', '1qazXSW@', '')
puts 'CREATED SIMPLE USER: ' << user.email

# Simple User 6
user = CreateAdminService.new.call_simple('bogdan.jarzab@uke.gov.pl', 'Bogdan Jarząb', '1qazXSW@', 'Tel. 601-333-456')
puts 'CREATED SIMPLE USER: ' << user.email

# Simple User 7
user = CreateAdminService.new.call_simple('andrzej.kaczor@uke.gov.pl', 'Andrzej Kaczor', '1qazXSW@', 'Tel. 668 470 833')
puts 'CREATED SIMPLE USER: ' << user.email



# project_statuses
project_status1 = ProjectStatus.find_or_create_by!(name: "I.1. Rejestrowany")
project_status2 = ProjectStatus.find_or_create_by!(name: "I.2. Opiniowany")
project_status3 = ProjectStatus.find_or_create_by!(name: "I.3. Opiniowany - weryfikacja")
ProjectStatus.find_or_create_by!(name: "I.4. Opiniowanie - zatwierdzone")
ProjectStatus.find_or_create_by!(name: "I.5. Opiniowanie - podpisane")
ProjectStatus.find_or_create_by!(name: "II.1. [Odwołanie] Rejestrowany")
ProjectStatus.find_or_create_by!(name: "II.2. [Odwołanie] Opiniowany")
ProjectStatus.find_or_create_by!(name: "II.3. [Odwołanie] Opiniowany - weryfikacja")
ProjectStatus.find_or_create_by!(name: "II.4. [Odwołanie] Opiniowanie - zatwierdzone")
ProjectStatus.find_or_create_by!(name: "II.5. [Odwołanie] Opiniowanie - podpisane")


# example customers
customer1 = Customer.create(name: 'Customer1')
puts 'CREATED CUSTOMER: ' << customer1.name

customer2 = Customer.create(name: 'Customer2')
puts 'CREATED CUSTOMER: ' << customer2.name

customer3 = Customer.create(name: 'Customer3')
puts 'CREATED CUSTOMER: ' << customer3.name

customer4 = Customer.create(name: 'Customer4')
puts 'CREATED CUSTOMER: ' << customer4.name

customer5 = Customer.create(name: 'Customer5')
puts 'CREATED CUSTOMER: ' << customer4.name

customer6 = Customer.create(name: 'Customer6')
puts 'CREATED CUSTOMER: ' << customer4.name

customer7 = Customer.create(name: 'Customer7')
puts 'CREATED CUSTOMER: ' << customer4.name

customer8 = Customer.create(name: 'Customer8')
puts 'CREATED CUSTOMER: ' << customer4.name


# example projects
project1 = Project.create( number: '1/2017', 
                          registration: Time.zone.today - 5.days, 
                          project_status: project_status1, 
                          customer: customer1)
puts 'CREATED SIMPLE PROJECT: ' << project1.number

project2 = Project.create( number: '2/2017', 
                          registration: Time.zone.today - 5.days, 
                          project_status: project_status2, 
                          customer: customer2)
puts 'CREATED SIMPLE PROJECT: ' << project2.number

project3 = Project.create( number: '3/2017', 
                          registration: Time.zone.today - 3.days, 
                          project_status: project_status2, 
                          customer: customer2)
puts 'CREATED SIMPLE PROJECT: ' << project3.number

project4 = Project.create( number: '4/2017', 
                          registration: Time.zone.today - 2.days, 
                          project_status: project_status2, 
                          customer: customer3)
puts 'CREATED SIMPLE PROJECT: ' << project4.number

project5 = Project.create( number: '5/2017', 
                          registration: Time.zone.today, 
                          project_status: project_status3, 
                          customer: customer4)
puts 'CREATED SIMPLE PROJECT: ' << project5.number


event_status_opened = EventStatus.find_or_create_by!(name: "Otwarte")
event_status_verification = EventStatus.find_or_create_by!(name: "Weryfikacja")
event_status_closed = EventStatus.find_or_create_by!(name: "Zamknięte")

event_type1 = EventType.find_or_create_by!(name: "Ocenianie") do |role|
  role.activities += %w(rating:* event:index event:show accessorization:index comment:index comment:show project:index project:show customer:index customer:show attachment:project_index attachment:project_show attachment:event_index attachment:event_show point_file:index point_file:download point_file:show)
  role.save!
end

event_type2 = EventType.find_or_create_by!(name: "Ocenianie po proteście") do |role|
  role.activities += %w(opiniowanie2:* rating:index rating:show event:index event:show accessorization:index comment:index comment:show project:index project:show customer:index customer:show attachment:project_index attachment:project_show attachment:event_index attachment:event_show point_file:index point_file:download point_file:show)
  role.save!
end

event_type3 = EventType.find_or_create_by!(name: "Analiza DART") do |role|
  role.activities += %w(for_role_scan:* event:index event:show accessorization:index comment:index comment:show project:index project:show customer:index customer:show attachment:project_index attachment:project_show attachment:event_index attachment:event_show point_file:index point_file:download point_file:show)
  role.save!
end


# example events
event1 = Event.create( title: 'Ocena - 1/2017', 
                      all_day: true, 
                      start_date: Time.zone.today + 2.weeks, 
                      end_date: Time.zone.today + 2.weeks, 
                      note: "",
                      event_status: event_status_verification, 
                      event_type: event_type1, 
                      project: project1)
puts 'CREATED SIMPLE EVENT: ' << event1.title

event2 = Event.create( title: 'Ocena - 2/2017', 
                      all_day: true, 
                      start_date: Time.zone.today + 2.weeks, 
                      end_date: Time.zone.today + 2.weeks, 
                      note: "", 
                      event_status: event_status_closed, 
                      event_type: event_type1, 
                      project: project2)
puts 'CREATED SIMPLE EVENT: ' << event2.title

event3 = Event.create( title: 'Ocena - 3/2017', 
                      all_day: true, 
                      start_date: Time.zone.today + 14.weeks, 
                      end_date: Time.zone.today + 14.weeks, 
                      note: "", 
                      event_status: event_status_opened, 
                      event_type: event_type1, 
                      project: project3)
puts 'CREATED SIMPLE EVENT: ' << event3.title

event4 = Event.create( title: 'Ocena - 4/2017', 
                      all_day: true, 
                      start_date: Time.zone.today + 15.weeks, 
                      end_date: Time.zone.today + 15.weeks, 
                      note: "", 
                      event_status: event_status_verification, 
                      event_type: event_type1, 
                      project: project4)
puts 'CREATED SIMPLE EVENT: ' << event4.title

event5 = Event.create( title: 'Ocena - 5/2017', 
                      all_day: true, 
                      start_date: Time.zone.today + 15.weeks, 
                      end_date: Time.zone.today + 15.weeks, 
                      note: "", 
                      event_status: event_status_opened, 
                      event_type: event_type1, 
                      project: project5)
puts 'CREATED SIMPLE EVENT: ' << event5.title


event6 = Event.create( title: 'Ocena po proteście - 2/2017', 
                      all_day: true, 
                      start_date: Time.zone.today + 17.weeks, 
                      end_date: Time.zone.today + 17.weeks, 
                      note: "", 
                      event_status: event_status_opened, 
                      event_type: event_type2, 
                      project: project2)
puts 'CREATED SIMPLE EVENT: ' << event6.title



# accessorizations
simple1 = User.find_by(email: 'krzysztof.frydrych@uke.gov.pl')
simple2 = User.find_by(email: 'michal.lassa@uke.gov.pl')
simple3 = User.find_by(email: 'mariusz.krupa@uke.gov.pl')
simple4 = User.find_by(email: 'marcin.dudek@uke.gov.pl')
simple5 = User.find_by(email: 'piotr.majewski@uke.gov.pl')
simple6 = User.find_by(email: 'bogdan.jarzab@uke.gov.pl')

observer = Role.find_by(name: 'Obserwator')
performer = Role.find_by(name: 'Wykonawca')

a = event1.accessorizations.create(user: simple1, role: performer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"
a = event1.accessorizations.create(user: simple2, role: observer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"
a = event1.accessorizations.create(user: simple3, role: observer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"

a = event2.accessorizations.create(user: simple1, role: performer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"
a = event2.accessorizations.create(user: simple2, role: observer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"
a = event2.accessorizations.create(user: simple3, role: observer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"

a = event3.accessorizations.create(user: simple4, role: performer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"
a = event3.accessorizations.create(user: simple1, role: observer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"
a = event3.accessorizations.create(user: simple2, role: observer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"

a = event4.accessorizations.create(user: simple3, role: performer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"
a = event4.accessorizations.create(user: simple4, role: observer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"
a = event4.accessorizations.create(user: simple5, role: observer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"

a = event5.accessorizations.create(user: simple3, role: performer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"
a = event5.accessorizations.create(user: simple4, role: observer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"
a = event5.accessorizations.create(user: simple5, role: observer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"

a = event6.accessorizations.create(user: simple6, role: performer)
puts "ADD #{a.user.name} TO #{a.event.title} AS #{a.role.name}"
