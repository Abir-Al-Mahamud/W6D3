# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

chris = User.create(username: 'Chris')
abir = User.create(username: 'Abir')
steve = User.create(username: 'Steve')

mona_lisa = Artwork.create(title: 'Mona Lisa', image_url: 'monalisa.com', artist_id: chris.id)

random_painting = Artwork.create(title: 'Random', image_url: 'google.com/images', artist_id: abir.id)

nba_top_shot = Artwork.create(title: 'Lebron Dunk', image_url: 'nbatopshot.com', artist_id: chris.id)

thinking_man = Artwork.create(title: 'The Thinking Man', image_url: 'thethinker.com', artist_id: steve.id)

share1 = ArtworkShare.create(artwork_id: random_painting.id, viewer_id: chris.id)
share2 = ArtworkShare.create(artwork_id: mona_lisa.id, viewer_id: abir.id)
share3 = ArtworkShare.create(artwork_id: mona_lisa.id, viewer_id: steve.id)
share4 = ArtworkShare.create(artwork_id: thinking_man.id, viewer_id: abir.id)
share5 = ArtworkShare.create(artwork_id: nba_top_shot.id, viewer_id: chris.id)

puts 'Done seeding!'