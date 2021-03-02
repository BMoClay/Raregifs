# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Ben Morgan-Cleveland", password: "123")
User.create(name: "Morgan", password: "456")
User.create(name: "Adrienne", password: "789")

Artwork.create(user_id: 1, title: "Mona Lisa", image:"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3be2c838-df3d-4cfa-9401-6b41e6136a19/d4ps09e-5ae2ab7f-06d3-450b-b1a3-981641477d3c.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvM2JlMmM4MzgtZGYzZC00Y2ZhLTk0MDEtNmI0MWU2MTM2YTE5XC9kNHBzMDllLTVhZTJhYjdmLTA2ZDMtNDUwYi1iMWEzLTk4MTY0MTQ3N2QzYy5qcGcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.blToWVRutAn62T8sjBhjRYBwGdUIzoILVBT_yKqXG0E") 
Artwork.create(user_id: 2, title: "Anger", image:"https://media3.giphy.com/media/84rG9j2H62hwc/giphy.gif")
Artwork.create(user_id: 2, title: "Gloucester", image:"https://fritsahlefeldt.files.wordpress.com/2019/09/30ec7-watercolor-sketch-ertholmene-christiansoe-by-frits-ahlefeldt.jpg?w=1200")     
Artwork.create(user_id: 2, title: "Smile", image:"https://media2.giphy.com/media/lPG6wNE7MZj3ttYsM9/source.gif") 
Artwork.create(user_id: 3, title: "who's afraid of blue", image: "https://media0.giphy.com/avatars/anacaro/YhzYqq1AOmjM.gif")
Artwork.create(user_id: 3, title: "who's afraid of red", image: "https://media2.giphy.com/media/3otPoT7JlwohDEipKE/giphy.gif")
Artwork.create(user_id: 3, title: "who's afraid of yellow", image: "https://i.gifer.com/origin/ce/cef6206e95d8fa845cbb0fd055d60e58.gif")

Acquisition.create(user_id: 2, artwork_id: 1)
Acquisition.create(user_id: 1, artwork_id: 6)
Acquisition.create(user_id: 2, artwork_id: 6)
Acquisition.create(user_id: 3, artwork_id: 1)
