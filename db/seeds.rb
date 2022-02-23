# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Politic.destroy_all
User.destroy_all


usertest = User.create!(email: "abc@gmail.com", password: "tototo")

trump = Politic.create!(name: "Trump", country: "USA", description: "I'm Intelligent, some people say I'm very very very Intelligent!", picture: "https://pagtour.info/wp-content/uploads/2018/09/img-coupe-du-monde-2026-donald-trump-met-un-gros-coup-de-pression-1524824401_x600_articles-454974-2.jpg", first_stupid: "fake news!", second_stupid: "America first", availability: true, rating: 5, user: usertest)
sarkozy = Politic.create(name: "Sarkozy", country: "France", description: "Longue expérience en gestion de projet et évènementiel, expertise en financements de campagnes", picture: "https://cdn.radiofrance.fr/s3/cruiser-production/2017/01/c4314dc8-b0ca-4989-be12-0562125ba76f/838_kadhafi_et_nicolas_sarkozy_en_libye_juillet_2007_cpatrick_kovarik_afp.jpg", first_stupid: "Si t'as pas une Rollex à 50 ans, t'as raté ta vie", second_stupid: "Casse toi pauv' con", availability: true, rating: 4, user: usertest)
fillon = Politic.create(name: "Fillon", country: "France", description: "Aujourd'hui retraité de la fonction publique, je partage ma passion pour le textile et la fiction aux plus ambitieux", picture: "https://file1.closermag.fr/var/closermag/storage/images/media/images-des-contenus/article/2017-01-25-penelope-fillon-dans-la-tourmente-les-internautes-se-moquent-de-la-femme-de-francois-fillon/france-angleterre-tournoi-des-vi-nations-2012-penelope-et-francois-fillon-paris-le-11-03-2012/5594250-1-fre-FR/France-Angleterre-Tournoi-des-VI-Nations-2012-Penelope-et-Francois-Fillon-Paris-le-11-03-2012.jpg?alias=original", first_stupid: "Vous auriez la veste en L?", second_stupid: "Moi j’ai mis 2,5 millions de personnes dans la rue quand j’ai fait la réforme des retraites… Macron est un petit joueur", availability: true, rating: 3, user: usertest)
hollande = Politic.create(name: "Hollande", country: "France", description: "Vends casque de scooter peu utilisé très bon état", picture: "https://img.huffingtonpost.com/asset/5c937da82400003500c7e43d.jpeg?ops=scalefit_630_noupscale", first_stupid: "We can be do what we want to do", second_stupid: "Le changement c'est maintenant mdr", availability: true, rating: 2, user: usertest)
melenchon = Politic.create(name: "Mélenchon", country: "France", description: "Tous les mardi et jeudi soir en live sur Twitch, séances ASMR et sophrologie", picture: "https://img.20mn.fr/V8ttWYtcQAqyB8-GNUOZbw/768x492_reaction-jean-luc-melenchon-agite-twitter-toute-journee.jpg", first_stupid: "La république, C'EST MOI!!!", second_stupid: "Vous pouriez faire l'effort d'aller au-delà de 140 mots", availability: true, rating: 5, user: usertest)

booking1 = Booking.create(bribe: "5", status: "pending")
