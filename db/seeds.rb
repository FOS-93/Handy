require "open-uri"
puts "Borrando datos anteriores"

Message.delete_all
Chatroom.delete_all
Skill.delete_all
Review.delete_all
Appointment.delete_all
Handyman.delete_all
User.delete_all

puts "Creando Seeds..."

# Fabrizio_________________________
fabrizio = User.create!(
  email: 'fso@gmail.com',
  first_name: 'Fabrizio',
  last_name: 'Oyarce',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)

file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1656795550/development/download_p7cokk.jpg")
fabrizio.photo.attach(io: file, filename: "Urokodaki.jpg", content_type: "image/jpeg")

puts fabrizio.first_name

# Juli_________________________
juliana = User.create!(
  email: 'juli@gmail.com',
  first_name: 'Juliana',
  last_name: 'Juarez',
  gender: 'Female',
  age: rand(18..50),
  password: '123456'
)

file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1656795633/development/download_njj37x.jpg")
juliana.photo.attach(io: file, filename: "Fuhrer.jpg", content_type: "image/jpeg")

puts juliana.first_name

# Alan_________________________
alan = User.create!(
  email: 'alan@gmail.com',
  first_name: 'Alan',
  last_name: 'Vergara',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)

file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1656795715/development/download_obhgn9.jpg")
alan.photo.attach(io: file, filename: "HSpecter.jpg", content_type: "image/jpeg")

puts alan.first_name

# Sergio_________________________
sergio = User.create!(
  email: 'sergio@gmail.com',
  first_name: 'Sergio',
  last_name: 'Sosa',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)

file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1656795807/development/AQL7EUBHGRAJJGBWOBMECISNMY_ciajxp.jpg")
sergio.photo.attach(io: file, filename: "DrHouse.jpg", content_type: "image/jpeg")

puts sergio.first_name

# 1_________________________
jmunoz = User.create!(
  email: 'jmuñoz@gmail.com',
  first_name: 'Jorge',
  last_name: 'Muñoz',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)
file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1656792031/development/jmu%C3%B1oz.jpg")
jmunoz.photo.attach(io: file, filename: "jmuñoz.jpg", content_type: "image/jpeg")

puts jmunoz.first_name

jmunoz_h = Handyman.create!(
  description: 'Tengo muy buena disposición cuando se trata de realizar trabajos. Me comprometo a hacer todo lo posible por cumplir con las expectativas y tambien seré honesto en caso de no poder realizar el trabajo',
  location: 'Las Condes, Santiago, Chile',
  user: jmunoz
)

jmunoz_skill = Skill.create!(
  name: %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter].sample,
  level: %w[Amateur Advanced Technical Professional].sample,
  description: "#{rand(1..6)} años de experiencia",
  handyman: jmunoz_h
)
jmunoz_ap = Appointment.create!(
  date: Date.today.strftime('%B %e, %Y'),
  description: "I need a #{jmunoz_skill.name} to fix some minor issues at home",
  status: "Accepted",
  skill: jmunoz_skill.name,
  user: fabrizio,
  handyman: jmunoz_h
)

Review.create!(
  stars: rand(4..5),
  content: "Its a good #{jmunoz_skill.name}, a professional one",
  user: fabrizio,
  appointment: jmunoz_ap,
  handyman: jmunoz_h
)

# 2_________________________
faraya = User.create!(
  email: 'faraya@gmail.com',
  first_name: 'Felipe',
  last_name: 'Araya',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)
file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1656461874/development/felipe.jpg.png")
faraya.photo.attach(io: file, filename: "felipe.jpg", content_type: "image/jpeg")

puts faraya.first_name

faraya_h = Handyman.create!(
  description: 'Puedo mostrarme un poco tímido, pero creanme que en cuanto a carpintería soy todo un experto',
  location: 'Peñalolen, Santiago, Chile',
  user: faraya
)

faraya_skill = Skill.create!(
  name: %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter].sample,
  level: %w[Amateur Advanced Technical Professional].sample,
  description: "#{rand(1..6)} años de experiencia",
  handyman: faraya_h
)

faraya_ap = Appointment.create!(
  date: Date.today.strftime('%B %e, %Y'),
  description: "I need a #{faraya_skill.name} to fix some minor issues at home",
  status: "Accepted",
  skill: faraya_skill.name,
  user: juliana,
  handyman: faraya_h
)

Review.create!(
  stars: rand(4..5),
  content: "Its a good #{faraya_skill.name}, a professional one",
  user: juliana,
  appointment: faraya_ap,
  handyman: faraya_h
)

# 3_________________________
cvillalobos = User.create!(
  email: 'cvillalobos@gmail.com',
  first_name: 'Camila',
  last_name: 'Villalobos',
  gender: 'Female',
  age: rand(18..50),
  password: '123456'
)
file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1656792001/development/camila.jpg.jpg")
cvillalobos.photo.attach(io: file, filename: "camila.jpg", content_type: "image/jpeg")

puts cvillalobos.first_name

cvillalobos_h = Handyman.create!(
  description: 'Cuando se trata de herramientas, doy lo mejor de mi',
  location: 'Ñuñoa, Santiago, Chile',
  user: cvillalobos
)

cvillalobos_skill = Skill.create!(
  name: %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter].sample,
  level: %w[Amateur Advanced Technical Professional].sample,
  description: "#{rand(1..6)} años de experiencia",
  handyman: cvillalobos_h
)
cvillalobos_ap = Appointment.create!(
  date: Date.today.strftime('%B %e, %Y'),
  description: "I need a #{cvillalobos_skill.name} to fix some minor issues at home",
  status: "Accepted",
  skill: cvillalobos_skill.name,
  user: alan,
  handyman: cvillalobos_h
)

Review.create!(
  stars: rand(4..5),
  content: "Its a good #{cvillalobos_skill.name}, a professional one",
  user: alan,
  appointment: cvillalobos_ap,
  handyman: cvillalobos_h
)
# 4_________________________
fperretta = User.create!(
  email: 'fperretta@gmail.com',
  first_name: 'Fernanda',
  last_name: 'Perretta',
  gender: 'Female',
  age: rand(18..50),
  password: '123456'
)
file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1656792416/development/fernanda.jpg.webp")
fperretta.photo.attach(io: file, filename: "fernanda.jpg", content_type: "image/jpeg")

puts fperretta.first_name

fperretta_h = Handyman.create!(
  description: 'Vengo un tiempo ocupando la plataforma y solo he tenido buenas experiencias. Conversemos y veamos que puedo hacer por ti',
  location: 'Vitacura, Santiago, Chile',
  user: fperretta
)

fperretta_skill = Skill.create!(
  name: %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter].sample,
  level: %w[Amateur Advanced Technical Professional].sample,
  description: "#{rand(1..6)} años de experiencia",
  handyman: fperretta_h
)
fperretta_ap = Appointment.create!(
  date: Date.today.strftime('%B %e, %Y'),
  description: "I need a #{fperretta_skill.name} to fix some minor issues at home",
  status: "Accepted",
  skill: fperretta_skill.name,
  user: sergio,
  handyman: fperretta_h
)

Review.create!(
  stars: rand(4..5),
  content: "Its a good #{fperretta_skill.name}, a professional one",
  user: sergio,
  appointment: fperretta_ap,
  handyman: fperretta_h
)

# 5_________________________
fpino = User.create!(
  email: 'fpino@gmail.com',
  first_name: 'Felipe',
  last_name: 'Pino',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)

file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1656795211/development/felipe2.jpg")
fpino.photo.attach(io: file, filename: "felipe2.jpg", content_type: "image/jpeg")

puts fpino.first_name

fpino_h = Handyman.create!(
  description: 'Ocupo esta plataforma como fuente extra de ingreso. Favor solo agendar verdaderos interesados',
  location: 'Las Condes, Santiago, Chile',
  user: fpino
)

fpino_skill = Skill.create!(
  name: %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter].sample,
  level: %w[Amateur Advanced Technical Professional].sample,
  description: "#{rand(1..6)} años de experiencia",
  handyman: fpino_h
)

fpino_ap = Appointment.create!(
  date: Date.today.strftime('%B %e, %Y'),
  description: "I need a #{fpino_skill.name} to fix some minor issues at home",
  status: "Accepted",
  skill: fpino_skill.name,
  user: fabrizio,
  handyman: fpino_h
)

Review.create!(
  stars: rand(4..5),
  content: "Its a good #{fpino_skill.name}, a professional one",
  user: fabrizio,
  appointment: fpino_ap,
  handyman: fpino_h
)

# 6_________________________
lmessi = User.create!(
  email: 'lmessi@gmail.com',
  first_name: 'Leonel',
  last_name: 'Messi',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)

file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1656792173/development/lmessi.jpg")
lmessi.photo.attach(io: file, filename: "lmessi.jpg", content_type: "image/jpeg")

puts lmessi.first_name

lmessi_h = Handyman.create!(
  description: 'para algunos será una sorpresa encontrarme acá, pero la verdad es que siempre he tenido estos talentos ocultos',
  location: 'Maipu, Santiago, Chile',
  user: lmessi
)

lmessi_skill = Skill.create!(
  name: %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter].sample,
  level: %w[Amateur Advanced Technical Professional].sample,
  description: "#{rand(1..6)} años de experiencia",
  handyman: lmessi_h
)
lmessi_ap = Appointment.create!(
  date: Date.today.strftime('%B %e, %Y'),
  description: "I need a #{lmessi_skill.name} to fix some minor issues at home",
  status: "Accepted",
  skill: lmessi_skill.name,
  user: juliana,
  handyman: lmessi_h
)

Review.create!(
  stars: rand(4..5),
  content: "Its a good #{lmessi_skill.name}, a professional one",
  user: juliana,
  appointment: lmessi_ap,
  handyman: lmessi_h
)
# 7_________________________
asanchez = User.create!(
  email: 'asanchez@gmail.com',
  first_name: 'Alexis',
  last_name: 'Sanchez',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)

file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1656795449/development/22-Alexis_azzjdo.jpg")
asanchez.photo.attach(io: file, filename: "Alexis.jpg", content_type: "image/jpeg")

puts asanchez.first_name

asanchez_h = Handyman.create!(
  description: 'Además de jugar al futbol, los trabajos manuales se me dan muy bien',
  location: 'La Florida, Santiago, Chile',
  user: asanchez
)

asanchez_skill = Skill.create!(
  name: %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter].sample,
  level: %w[Amateur Advanced Technical Professional].sample,
  description: "#{rand(1..6)} años de experiencia",
  handyman: asanchez_h
)

asanchez_ap = Appointment.create!(
  date: Date.today.strftime('%B %e, %Y'),
  description: "I need a #{asanchez_skill.name} to fix some minor issues at home",
  status: "Accepted",
  skill: asanchez_skill.name,
  user: alan,
  handyman: asanchez_h
)

Review.create!(
  stars: rand(4..5),
  content: "Its a good #{asanchez_skill.name}, a professional one",
  user: alan,
  appointment: asanchez_ap,
  handyman: asanchez_h
)
puts "finished"
