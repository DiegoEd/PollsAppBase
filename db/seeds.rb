# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

poll1 = Poll.create(title: "Primera encuesta", description: "Esta es la primera encuesta", version: 1)

question11 = Question.create(question: "Primera pregunta", poll_id: poll1.id)

option111 = Option.create(option: "A", question_id: question11.id)
option112 = Option.create(option: "B", question_id: question11.id)

question12 = Question.create(question: "Segunda pregunta", poll_id: poll1.id)

option121 = Option.create(option: "C", question_id: question12.id)
option122 = Option.create(option: "D", question_id: question12.id)

question13 = Question.create(question: "Tercera pregunta", poll_id: poll1.id)

option131 = Option.create(option: "E", question_id: question13.id)
option132 = Option.create(option: "F", question_id: question13.id)

question14 = Question.create(question: "Cuarta pregunta", poll_id: poll1.id)

option141 = Option.create(option: "G", question_id: question14.id)
option142 = Option.create(option: "H", question_id: question14.id)

##############################################################################################################

poll2 = Poll.create(title: "Segunda encuesta", description: "Esta es la segunda encuesta", version: 1)

question21 = Question.create(question: "Primera pregunta", poll_id: poll2.id)

option211 = Option.create(option: "A", question_id: question21.id)
option212 = Option.create(option: "B", question_id: question21.id)

question22 = Question.create(question: "Segunda pregunta", poll_id: poll2.id)

option221 = Option.create(option: "C", question_id: question22.id)
option222 = Option.create(option: "D", question_id: question22.id)

question23 = Question.create(question: "Tercera pregunta", poll_id: poll2.id)

option231 = Option.create(option: "E", question_id: question23.id)
option232 = Option.create(option: "F", question_id: question23.id)

question24 = Question.create(question: "Cuarta pregunta", poll_id: poll2.id)

option241 = Option.create(option: "G", question_id: question24.id)
option242 = Option.create(option: "H", question_id: question24.id)

##############################################################################################################

poll3 = Poll.create(title: "Tercera encuesta", description: "Esta es la tercera encuesta", version: 1)

question31 = Question.create(question: "Primera pregunta", poll_id: poll3.id)

option311 = Option.create(option: "A", question_id: question31.id)
option312 = Option.create(option: "B", question_id: question31.id)

question32 = Question.create(question: "Segunda pregunta", poll_id: poll3.id)

option321 = Option.create(option: "C", question_id: question32.id)
option322 = Option.create(option: "D", question_id: question32.id)

question33 = Question.create(question: "Tercera pregunta", poll_id: poll3.id)

option331 = Option.create(option: "E", question_id: question33.id)
option332 = Option.create(option: "F", question_id: question33.id)

question34 = Question.create(question: "Cuarta pregunta", poll_id: poll3.id)

option341 = Option.create(option: "G", question_id: question34.id)
option342 = Option.create(option: "H", question_id: question34.id)