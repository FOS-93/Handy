puts "Borrando datos anteriores"

Skill.delete_all
Appointment.delete_all
Handyman.delete_all
User.delete_all

puts "Creando Seeds..."

# 1_________________________
User.create!(
  email: 'jmuñoz@gmail.com',
  first_name: 'Jorge',
  last_name: 'Muñoz',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)

puts User.last.first_name

Handyman.create!(
  description: 'Tengo muy buena disposición cuando se trata de realizar trabajos. Me comprometo a hacer todo lo posible por cumplir con las expectativas y tambien seré honesto en caso de no poder realizar el trabajo',
  location: 'Las Condes, Santiago, Chile',
  user_id: User.last.id
)

Skill.create!(
  name: %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter].sample,
  level: %w[Amateur Advanced Technical Professional].sample,
  description: "#{rand(1..6)} años de experiencia",
  handyman_id: Handyman.last.id
)

# 2_________________________
User.create!(
  email: 'faraya@gmail.com',
  first_name: 'Felipe',
  last_name: 'Araya',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)

puts User.last.first_name

Handyman.create!(
  description: 'Puedo mostrarme un poco tímido, pero creanme que en cuanto a carpintería soy todo un experto',
  location: 'Peñalolen, Santiago, Chile',
  user_id: User.last.id
)

Skill.create!(
  name: %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter].sample,
  level: %w[Amateur Advanced Technical Professional].sample,
  description: "#{rand(1..6)} años de experiencia",
  handyman_id: Handyman.last.id
)

# 3_________________________
User.create!(
  email: 'cvillalobos@gmail.com',
  first_name: 'Camila',
  last_name: 'Villalobos',
  gender: 'Female',
  age: rand(18..50),
  password: '123456'
)

puts User.last.first_name

Handyman.create!(
  description: 'Cuando se trata de herramientas, doy lo mejor de mi',
  location: 'Ñuñoa, Santiago, Chile',
  user_id: User.last.id
)

Skill.create!(
  name: %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter].sample,
  level: %w[Amateur Advanced Technical Professional].sample,
  description: "#{rand(1..6)} años de experiencia",
  handyman_id: Handyman.last.id
)

# 4_________________________
User.create!(
  email: 'fperretta@gmail.com',
  first_name: 'Fernanda',
  last_name: 'Perretta',
  gender: 'Female',
  age: rand(18..50),
  password: '123456'
)

puts User.last.first_name

Handyman.create!(
  description: 'Vengo un tiempo ocupando la plataforma y solo he tenido buenas experiencias. Conversemos y veamos que puedo hacer por ti',
  location: 'Vitacura, Santiago, Chile',
  user_id: User.last.id
)

Skill.create!(
  name: %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter].sample,
  level: %w[Amateur Advanced Technical Professional].sample,
  description: "#{rand(1..6)} años de experiencia",
  handyman_id: Handyman.last.id
)

# 5_________________________
User.create!(
  email: 'fpino@gmail.com',
  first_name: 'Felipe',
  last_name: 'Pino',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)

Handyman.create!(
  description: 'Ocupo esta plataforma como fuente extra de ingreso. Favor solo agendar verdaderos interesados',
  location: 'Las Condes, Santiago, Chile',
  user_id: User.last.id
)

Skill.create!(
  name: %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter].sample,
  level: %w[Amateur Advanced Technical Professional].sample,
  description: "#{rand(1..6)} años de experiencia",
  handyman_id: Handyman.last.id
)

# 6_________________________
User.create!(
  email: 'lmessi@gmail.com',
  first_name: 'Leonel',
  last_name: 'Messi',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)

puts User.last.first_name

Handyman.create!(
  description: 'para algunos será una sorpresa encontrarme acá, pero la verdad es que siempre he tenido estos talentos ocultos',
  location: 'Puerto Madero, Argentina',
  user_id: User.last.id
)

Skill.create!(
  name: %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter].sample,
  level: %w[Amateur Advanced Technical Professional].sample,
  description: "#{rand(1..6)} años de experiencia",
  handyman_id: Handyman.last.id
)

# 7_________________________
User.create!(
  email: 'asanchez@gmail.com',
  first_name: 'Alexis',
  last_name: 'Sanchez',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)

puts User.last.first_name

Handyman.create!(
  description: 'Además de jugar al futbol, los trabajos manuales se me dan muy bien',
  location: 'Tocopilla, Chile',
  user_id: User.last.id
)

Skill.create!(
  name: %w[Carpenter Plumber Blacksmith Electrician Gasfitter Turner Bricklayer Painter].sample,
  level: %w[Amateur Advanced Technical Professional].sample,
  description: "#{rand(1..6)} años de experiencia",
  handyman_id: Handyman.last.id
)

# Fabrizio_________________________
User.create!(
  email: 'fso@gmail.com',
  first_name: 'Fabrizio',
  last_name: 'Oyarce',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)

puts User.last.first_name

# Juli_________________________
User.create!(
  email: 'juli@gmail.com',
  first_name: 'Juliana',
  last_name: 'Juarez',
  gender: 'Female',
  age: rand(18..50),
  password: '123456'
)

puts User.last.first_name

# Alan_________________________
User.create!(
  email: 'alan@gmail.com',
  first_name: 'Alan',
  last_name: 'Vergara',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)

puts User.last.first_name

# Sergio_________________________
User.create!(
  email: 'sergio@gmail.com',
  first_name: 'Sergio',
  last_name: 'Sosa',
  gender: 'Male',
  age: rand(18..50),
  password: '123456'
)

puts User.last.first_name

puts "finished"
