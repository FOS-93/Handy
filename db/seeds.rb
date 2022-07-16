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

file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1657668271/development/photo-1547425260-76bcadfb4f2c_mg41oj.avif")

fabrizio.photo.attach(io: file, filename: "Fabrizio.jpg", content_type: "image/jpeg")

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

file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1657668332/development/photo-1580489944761-15a19d654956_ytb2p9.avif")
juliana.photo.attach(io: file, filename: "Juli.jpg", content_type: "image/jpeg")

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

file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1657668281/development/photo-1552058544-f2b08422138a_ljrx0k.avif")
alan.photo.attach(io: file, filename: "Avp.jpg", content_type: "image/jpeg")

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

file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1657668304/development/photo-1500048993953-d23a436266cf_ywmp9e.avif")
sergio.photo.attach(io: file, filename: "Sergio.jpg", content_type: "image/jpeg")

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
file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1657668325/development/photo-1599566150163-29194dcaad36_abksek.avif")
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
  description: "#{rand(1..6)} years of experience. I am very tidy and professional.",
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

# Review.create!(
#   stars: rand(4..5),
#   content: "Its a good #{jmunoz_skill.name}, a professional one",
#   user: fabrizio,
#   appointment: jmunoz_ap,
#   handyman: jmunoz_h
# )

# 2_________________________
faraya = User.create!(
  email: 'faraya@gmail.com',
  first_name: 'Felipe',
  last_name: 'Araya',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)
file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1657668262/development/photo-1570612861542-284f4c12e75f_vyxnns.avif")
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
  description: "#{rand(1..6)} years of experience. I am very tidy and professional.",
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
file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1657668299/development/photo-1499952127939-9bbf5af6c51c_wr1d2i.avif")
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
  description: "#{rand(1..6)} years of experience. I am very tidy and professional.",
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
file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1657668294/development/photo-1491349174775-aaafddd81942_hbkpan.avif")
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
  description: "#{rand(1..6)} years of experience. I am very tidy and professional.",
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

file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1657668993/development/photo-1629425733761-caae3b5f2e50_cghiyw.avif")
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
  description: "#{rand(1..6)} years of experience. I am very tidy and professional.",
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
lmessa = User.create!(
  email: 'lmessa@gmail.com',
  first_name: 'Leonardo',
  last_name: 'Messa',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)

file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1657669224/development/photo-1621905252507-b35492cc74b4_unour1.avif")
lmessa.photo.attach(io: file, filename: "lmessi.jpg", content_type: "image/jpeg")

puts lmessa.first_name

lmessa_h = Handyman.create!(
  description: 'para algunos será una sorpresa encontrarme acá, pero la verdad es que siempre he tenido estos talentos ocultos',
  location: 'Maipu, Santiago, Chile',
  user: lmessa
)

lmessa_skill = Skill.create!(
  name: %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter].sample,
  level: %w[Amateur Advanced Technical Professional].sample,
  description: "#{rand(1..6)} years of experience. I am very tidy and professional.",
  handyman: lmessa_h
)
lmessa_ap = Appointment.create!(
  date: Date.today.strftime('%B %e, %Y'),
  description: "I need a #{lmessa_skill.name} to fix some minor issues at home",
  status: "Accepted",
  skill: lmessa_skill.name,
  user: juliana,
  handyman: lmessa_h
)

Review.create!(
  stars: rand(4..5),
  content: "Its a good #{lmessa_skill.name}, a professional one",
  user: juliana,
  appointment: lmessa_ap,
  handyman: lmessa_h
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

file = URI.open("https://res.cloudinary.com/alan-v-p/image/upload/v1657669387/development/photo-1570295999919-56ceb5ecca61_o9czzh.avif")
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
  description: "#{rand(1..6)} years of experience. I am very tidy and professional.",
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

asanchez_ap = Appointment.create!(
  date: Date.today.strftime('%B %e, %Y'),
  description: "I need a #{asanchez_skill.name} to fix some minor issues at home",
  status: "Accepted",
  skill: asanchez_skill.name,
  user: juliana,
  handyman: asanchez_h
)

Review.create!(
  stars: rand(4..5),
  content: "Its a good #{asanchez_skill.name}, a professional one",
  user: alan,
  appointment: asanchez_ap,
  handyman: asanchez_h
)

Review.create!(
  stars: rand(4..5),
  content: "Its a good #{asanchez_skill.name}, a professional one",
  user: juliana,
  appointment: asanchez_ap,
  handyman: asanchez_h
)

Review.create!(
  stars: rand(4..5),
  content: "Its a good #{asanchez_skill.name}, a professional one",
  user: fabrizio,
  appointment: asanchez_ap,
  handyman: asanchez_h
)

Review.create!(
  stars: rand(4..5),
  content: "Its a good #{asanchez_skill.name}, a professional one",
  user: sergio,
  appointment: asanchez_ap,
  handyman: asanchez_h
)
puts "finished"
