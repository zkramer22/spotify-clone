# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'uri'

# reset db manually. Heroku doesn't like db:reset. Pain in the arse
User.destroy_all
Artist.destroy_all
Album.destroy_all
Track.destroy_all

# /////////////////////////////////////////////////////////////////////
# //////
# USERS
# //////
user_list = [
  ['userA', 'qwerty'],
  ['userB', 'asdfgh'],
  ['userC', 'zxcvbn']
]
user_list.each do |email_address, password|
  User.create!(email_address: email_address, password: password)
end

# /////////////////////////////////////////////////////////////////////
# ///////
# ARTISTS
# ///////
artist_list = [
  "Above and Beyond",   #1
  "Coldplay", #2
  "Dusky",  #3
  "Emancipator",  #4
  "Haywyre",  #5
  "Ilan Bluestone", #6
  "Incubus",  #7
  "Jaga Jazzist", #8
  "Jay-Z",  #9
  "Jaytech", #10
  "Justin Timberlake",  #11
  "Maroon 5", #12
  "Mat Zo", #13
  "Modern Jazz Quartet",  #14
  "ODESZA", #15
  "Porter Robinson",  #16
  "Red Hot Chili Peppers"#, #17
  # "Skrillex", #18
  # "Snarky Puppy", #19
  # "Tycho",  #20
  # "Young the Giant",  #21
]
artist_list.each do |name|
  Artist.create!(name: name)
end

# /////////////////////////////////////////////////////////////////////
# //////
# ALBUMS
# //////
album_list = [
  ["Group Therapy (Deluxe Version)", 1], #1

  ["A Head Full of Dreams", 2], #2

  ["Love Taking Over - Single", 3], #3
  ["Nobody Else - Single", 3], #4

  ["Soon It Will Be Cold Enough", 4], #5

  ["Two Fold, Pt. 1", 5], #6
  ["Two Fold, Pt. 2", 5], #7

  ["Sinai - Single", 6], #8
  ["Spheres - Single", 6], #9

  ["8", 7], #10

  ["One-Armed Bandit", 8], #11
  ["What We Must", 8], #12

  ["Magna Carta...Holy Grail", 9], #13

  ["Anjunadeep 03", 10], #14
  ["Multiverse", 10], #15

  ["Justified", 11], #16
  ["The 20/20 Experience", 11], #17

  ["Hands All Over", 12], #18

  ["Damage Control", 13], #19
  ["Self Assemble", 13], #20
  ["The Sky - EP", 13], #21

  ["Django", 14], #22

  ["In Return", 15], #23
  ["Say My Name - Remixes", 15], #24

  ["Say My Name - Single", 16], #25
  ["Spitfire", 16], #26
  ["Worlds", 16], #27

  ["The Getaway", 17], #28
  #
  # ["Bangarang", 18], #29
  # ["Reptile's Theme - Single", 18], #30
  # ["Scary Monsters and Nice Sprites", 18], #31
  #
  # ["Bring Us the Bright", 19], #32
  # ["Tell Your Friends", 19], #33
  # ["The World is Getting Smaller", 19], #34
  #
  # ["Awake", 20], #35
  # ["Epoch", 20], #36
  #
  # ["Home of the Strange", 21], #37
  # ["Mind Over Matter", 21] #38
]
album_list.each do |name, artist_id|
  Album.create!(name: name, artist_id: artist_id)
end

# /////////////////////////////////////////////////////////////////////
# TRACKS
# //////
track_list = [
  ["Filmic", 1, 1, "https://s3.us-east-2.amazonaws.com/spotifly-audio/music/above-and-beyond/01+Filmic.m4a"],
  ["Alchemy", 1, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/above-and-beyond/02+Alchemy+(feat.+Zoe%CC%88+Johnston).m4a")],
  ["Sun and Moon", 1, 3, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/above-and-beyond/03+Sun+%26+Moon+(feat.+Richard+Bedford).m4a")],
  ["You Got to Go", 1, 4, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/above-and-beyond/04+You+Got+To+Go+(feat.+Zoe%CC%88+Johnston).m4a")],
  ["Black Room Boy (Vocals by Tony McGuinness & Richard Bedford)", 1, 5, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/above-and-beyond/05+Black+Room+Boy+(Vocals+by+Tony+McGuinness+%26+Richard+Bedford).m4a")],
  ["Giving It Out (feat. Zoë Johnston)", 1, 6, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/above-and-beyond/06+Giving+It+Out+(feat.+Zoe%CC%88+Johnston).m4a")],
  ["On My Way To Heaven", 1, 7, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/above-and-beyond/07+On+My+Way+To+Heaven+(feat.+Richard+Bedford).m4a")],
  ["Prelude (feat. Richard Bedford)", 1, 8, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/above-and-beyond/08+Prelude+(feat.+Richard+Bedford).m4a")],
  ["Sun In Your Eyes", 1, 9, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/above-and-beyond/09+Sun+In+Your+Eyes.m4a")],
  ["Love Is Not Enough", 1, 10, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/above-and-beyond/10+Love+Is+Not+Enough+(feat.+Zoe%CC%88+Johnston).m4a")],
  ["Every Little Beat (feat. Richard Bedford)", 1, 11, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/above-and-beyond/11+Every+Little+Beat+(feat.+Richard+Bedford).m4a")],
  ["Sweetest Heart (feat. Zoë Johnston)", 1, 12, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/above-and-beyond/12+Sweetest+Heart+(feat.+Zoe%CC%88+Johnston).m4a")],
  ["Thing Called Love (feat. Richard Bedford)", 1, 13, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/above-and-beyond/13+Thing+Called+Love+(feat.+Richard+Bedford).m4a")],
  ["Only A Few Things (feat. Zoë Johnston)", 1, 14, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/above-and-beyond/14+Only+A+Few+Things+(feat.+Zoe%CC%88+Johnston).m4a")],
  ["Eternal", 1, 15, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/above-and-beyond/15+Eternal.m4a")],

  ["A Head Full of Dreams", 2, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/coldplay/01+A+Head+Full+of+Dreams.m4a")],
  ["Birds", 2, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/coldplay/02+Birds.m4a")],
  ["Hymn for the Weekend", 2, 3, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/coldplay/03+Hymn+for+the+Weekend.m4a")],
  ["Everglow", 2, 4, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/coldplay/04+Everglow.m4a")],
  ["Adventure of a Lifetime", 2, 5, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/coldplay/05+Adventure+of+a+Lifetime.m4a")],
  ["Fun (feat. Tove Lo)", 2, 6, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/coldplay/06+Fun+(feat.+Tove+Lo).m4a")],
  ["Kaleidoscope", 2, 7, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/coldplay/07+Kaleidoscope.m4a")],
  ["Army of One", 2, 8, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/coldplay/08+Army+of+One.m4a")],
  ["Amazing Day", 2, 9, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/coldplay/09+Amazing+Day.m4a")],
  ["Colour Spectrum", 2, 10, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/coldplay/10+Colour+Spectrum.m4a")],
  ["Up&Up", 2, 11, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/coldplay/11+Up%26Up.m4a")],

  ["Love Taking Over", 3, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/dusky/01+Love+Taking+Over.m4a")],
  ["Nobody Else", 4, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/dusky/01+Nobody+Else.m4a")],

  ["Lionheart", 5, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/emancipator/01+Lionheart.m4a")],
  ["Wolf Drawn", 5, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/emancipator/02+Wolf+Drawn.m4a")],
  ["When I Go", 5, 3, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/emancipator/03+When+I+Go.m4a")],
  ["With Rainy Eyes", 5, 4, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/emancipator/04+With+Rainy+Eyes.m4a")],
  ["First Snow", 5, 5, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/emancipator/09+First+Snow.m4a")],
  ["Soon It Will Be Cold Enough to Build Fires", 5, 6, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/emancipator/11+Soon+It+Will+Be+Cold+Enough+to+Build+Fires.m4a")],
  ["Anthem", 5, 7, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/emancipator/12+Anthem.m4a")],

  ["Permutate", 6, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/haywyre/06+Permutate.m4a")],
  ["I Am Me", 7, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/haywyre/01+I+Am+Me.m4a")],
  ["I Am You", 7, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/haywyre/02+I+Am+You.m4a")],
  ["Restraint", 7, 3, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/haywyre/03+Restraint.m4a")],
  ["Impulse", 7, 4, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/haywyre/04+Impulse.m4a")],
  ["Do You Don't You", 7, 5, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/haywyre/05+Do+You+Don't+You.m4a")],
  ["Moment", 7, 6, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/haywyre/06+Moment.m4a")],
  ["Memory", 7, 7, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/haywyre/07+Memory.m4a")],
  ["Transient", 7, 8, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/haywyre/08+Transient.m4a")],
  ["Endlessly", 7, 9, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/haywyre/09+Endlessly.m4a")],

  ["Sinai", 8, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/ilan-bluestone/01+Sinai.m4a")],
  ["Spheres", 9, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/ilan-bluestone/01+Spheres.m4a")],

  ["No Fun", 10, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/incubus/01+No+Fun.m4a")],
  ["Nimble Bastard", 10, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/incubus/02+Nimble+Bastard.m4a")],
  ["State of the Art", 10, 3, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/incubus/03+State+of+the+Art.m4a")],
  ["Glitterbomb", 10, 4, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/incubus/04+Glitterbomb.m4a")],
  ["Undefeated", 10, 5, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/incubus/05+Undefeated.m4a")],
  ["Loneliest", 10, 6, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/incubus/06+Loneliest.m4a")],
  ["When I Became a Man", 10, 7, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/incubus/07+When+I+Became+a+Man.m4a")],
  ["Familiar Faces", 10, 8, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/incubus/08+Familiar+Faces.m4a")],
  ["Love in a Time of Surveillance", 10, 9, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/incubus/09+Love+in+a+Time+of+Surveillance.m4a")],
  ["Make No Sound in the Digital Forest", 10, 10, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/incubus/10+Make+No+Sound+in+the+Digital+Forest.m4a")],
  ["Throw Out the Map", 10, 11, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/incubus/11+Throw+Out+the+Map.m4a")],

  ["One-armed Bandit", 11, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaga-jazzist/02+One-armed+Bandit.m4a")],
  ["Toccata", 11, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaga-jazzist/05+Toccata.m4a")],
  ["Prognissekongen", 11, 3, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaga-jazzist/06+Prognissekongen.m4a")],
  ["Stardust Hotel", 12, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaga-jazzist/1-02+Stardust+Hotel.m4a")],
  ["Mikado", 12, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaga-jazzist/1-06+Mikado.m4a")],

  ["Holy Grail (feat. Justin Timberlake)", 13, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jay-z/01+Holy+Grail+(feat.+Justin+Timberlake).m4a")],
  ["Tom Ford", 13, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jay-z/03+Tom+Ford.m4a")],
  ["Crown", 13, 3, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jay-z/08+Crown.m4a")],
  ["Part II (On the Run) [feat. Beyoncé]", 13, 4, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jay-z/11+Part+II+(On+the+Run)+%5Bfeat.+Beyonce%CC%81%5D.m4a")],

  ["Djembe (Original Mix)", 14, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaytech/22+Djembe+(Original+Mix).m4a")],
  ["Everglade (feat. Serenade)", 15, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaytech/01+Everglade+(feat.+Serenade).m4a")],
  ["New Vibe", 15, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaytech/02+New+Vibe.m4a")],
  ["Rabbit Raiders", 15, 3, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaytech/03+Rabbit+Raiders.m4a")],
  ["Labour of Love (feat. Nathan Grainger)", 15, 4, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaytech/04+Labour+of+Love+(feat.+Nathan+Grainger).m4a")],
  ["Epsilon", 15, 5, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaytech/05+Epsilon.m4a")],
  ["Innovation", 15, 6, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaytech/06+Innovation+(feat.+Nathan+Grainger).m4a")],
  ["Through the Maze (feat. Serenade)", 15, 7, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaytech/07+Through+the+Maze+(feat.+Serenade).m4a")],
  ["Diode", 15, 8, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaytech/08+Diode.m4a")],
  ["Dr. Device", 15, 9, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaytech/09+Dr.+Device.m4a")],
  ["Stranger (feat. Steve Smith)", 15, 10, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaytech/10+Stranger+(feat.+Steve+Smith).m4a")],
  ["Multiverse", 15, 11, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaytech/11+Multiverse.m4a")],
  ["Blue Ocean (feat. Melody Gough)", 15, 12, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaytech/12+Blue+Ocean+(feat.+Melody+Gough).m4a")],
  ["Coda", 15, 13, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaytech/13+Coda.m4a")],
  ["Timelapse (Bonus Track)", 15, 14, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/jaytech/14+Timelapse+(Bonus+Track).m4a")],

  ["Rock Your Body", 16, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/justin-timberlake/06+Rock+Your+Body.m4a")],
  ["Pusher Love Girl", 17, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/justin-timberlake/01+Pusher+Love+Girl.m4a")],
  ["Suit & Tie (feat. JAY Z)", 17, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/justin-timberlake/02+Suit+%26+Tie+(feat.+JAY+Z).m4a")],
  ["Don’t Hold the Wall", 17, 3, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/justin-timberlake/03+Don_t+Hold+the+Wall.m4a")],
  ["Strawberry Bubblegum", 17, 4, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/justin-timberlake/04+Strawberry+Bubblegum.m4a")],
  ["Tunnel Vision", 17, 5, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/justin-timberlake/05+Tunnel+Vision.m4a")],
  ["TKO", 17, 6, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/justin-timberlake/04+TKO.m4a")],

  ["Never Gonna Leave This Bed", 18, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/maroon5/05+Never+Gonna+Leave+This+Bed.m4a")],

  ["Superman Lost", 19, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/01+Superman+Lost.m4a")],
  ["Only For You (feat. Rachel K Collier)", 19, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/02+Only+For+You+(feat.+Rachel+K+Collier).m4a")],
  ["Easy (feat. Porter Robinson)", 19, 3, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/03+Easy+(feat.+Porter+Robinson).m4a")],
  ["Caller ID", 19, 4, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/04+Caller+ID.m4a")],
  ["Little Damage", 19, 5, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/05+Little+Damage.m4a")],
  ["Pyramid Scheme (feat. Chuck D)", 19, 6, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/06+Pyramid+Scheme+(feat.+Chuck+D).m4a")],
  ["The Sky (feat. Linnea Schossow)", 19, 7, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/07+The+Sky+(feat.+Linnea+Schossow).m4a")],
  ["Like It Used To Be", 19, 8, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/08+Like+It+Used+To+Be.m4a")],
  ["Time On Your Side (feat. Janai)", 19, 9, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/09+Time+On+Your+Side+(feat.+Janai).m4a")],
  ["Moderate Stimulation", 19, 10, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/10+Moderate+Stimulation.m4a")],
  ["Lucid Dreams", 19, 11, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/11+Lucid+Dreams.m4a")],
  ["EZ", 19, 12, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/12+EZ.m4a")],
  ["Hurricane (feat. Eyes That Lie)", 19, 13, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/13+Hurricane+(feat.+Eyes+That+Lie).m4a")],
  ["Fall Into Dreams (feat. Pete Josef)", 19, 14, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/14+Fall+Into+Dreams+(feat.+Pete+Josef).m4a")],
  ["Time Dilation", 19, 15, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/15+Time+Dilation.m4a")],
  ["Order Out of Chaos", 20, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/01+Order+Out+of+Chaos.m4a")],
  ["The Enemy (feat. Sinead)", 20, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/02+The+Enemy+(feat.+Sinead).m4a")],
  ["Sinful (feat. I See MONSTAS)", 20, 3, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/03+Sinful+(feat.+I+See+MONSTAS).m4a")],
  ["Patterns Emerging", 20, 4, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/04+Patterns+Emerging.m4a")],
  ["Killing Time", 20, 5, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/05+Killing+Time.m4a")],
  ["Smacked up on Jack", 20, 6, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/06+Smacked+up+on+Jack.m4a")],
  ["Ruffneck Bad Boy (VIP)", 20, 7, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/07+Ruffneck+Bad+Boy+(VIP).m4a")],
  ["Lights Out", 20, 8, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/08+Lights+Out.m4a")],
  ["Soul Food", 20, 9, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/09+Soul+Food.m4a")],
  ["Stereo No Aware", 20, 10, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/10+Stereo+No+Aware.m4a")],
  ["Too Late (feat. Sinead)", 20, 11, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/11+Too+Late+(feat.+Sinead).m4a")],
  ["The Last Transmission", 20, 12, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/12+The+Last+Transmission.m4a")],
  ["The Sky (Extended Mix)", 21, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/03+The+Sky+(Extended+Mix).m4a")],
  ["The Sky (Club Mix)", 21, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/mat-zo/04+The+Sky+(Club+Mix).m4a")],

  ["Django", 22, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/modern-jazz-quartet/01+Django.m4a")],
  ["One Bass Hit", 22, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/modern-jazz-quartet/02+One+Bass+Hit.m4a")],
  ["La Ronde Suite", 22, 3, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/modern-jazz-quartet/03+La+Ronde+Suite.m4a")],
  ["The Queen's Fancy", 22, 4, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/modern-jazz-quartet/04+The+Queen's+Fancy.m4a")],
  ["Delaunay's Dilemma", 22, 5, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/modern-jazz-quartet/05+Delaunay's+Dilemma.m4a")],
  ["Autumn In New York", 22, 6, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/modern-jazz-quartet/06+Autumn+In+New+York.m4a")],
  ["But Not for Me", 22, 7, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/modern-jazz-quartet/07+But+Not+for+Me.m4a")],
  ["Milano", 22, 8, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/modern-jazz-quartet/08+Milano.m4a")],

  ["Bloom", 23, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/odesza/03+Bloom.m4a")],
  ["Say My Name (Ambassadeurs Remix)", 24, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/odesza/02+Say+My+Name+(Ambassadeurs+Remix).m4a")],
  ["Say My Name (Jai Wolf Remix)", 24, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/odesza/07+Say+My+Name+(Jai+Wolf+Remix).m4a")],

  ["Say My Name (Original Mix)", 25, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/porter-robinson/02+Say+My+Name+(Original+Mix).m4a")],
  ["Unison (Knife Party Remix)", 26, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/porter-robinson/07+Unison+(Knife+Party+Remix).m4a")],
  ["Sad Machine", 27, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/porter-robinson/02+Sad+Machine.m4a")],
  ["Fresh Static Snow", 27, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/porter-robinson/05+Fresh+Static+Snow.m4a")],
  ["Natural Light", 27, 3, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/porter-robinson/08+Natural+Light.m4a")],
  ["Sea of Voices", 27, 4, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/porter-robinson/10+Sea+of+Voices.m4a")],

  ["The Getaway", 28, 1, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/rhcp/01+The+Getaway.m4a")],
  ["Dark Necessities", 28, 2, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/rhcp/02+Dark+Necessities.m4a")],
  ["We Turn Red", 28, 3, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/rhcp/03+We+Turn+Red.m4a")],
  ["The Longest Wave", 28, 4, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/rhcp/04+The+Longest+Wave.m4a")],
  ["Goodbye Angels", 28, 5, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/rhcp/05+Goodbye+Angels.m4a")],
  ["Sick Love", 28, 6, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/rhcp/06+Sick+Love.m4a")],
  ["Go Robot", 28, 7, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/rhcp/07+Go+Robot.m4a")],
  ["Feasting on the Flowers", 28, 8, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/rhcp/08+Feasting+on+the+Flowers.m4a")],
  ["Detroit", 28, 9, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/rhcp/09+Detroit.m4a")],
  ["This Ticonderoga", 28, 10, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/rhcp/10+This+Ticonderoga.m4a")],
  ["Encore", 28, 11, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/rhcp/11+Encore.m4a")],
  ["The Hunter", 28, 12, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/rhcp/12+The+Hunter.m4a")],
  ["Dreams of a Samurai", 28, 13, URI("https://s3.us-east-2.amazonaws.com/spotifly-audio/music/rhcp/13+Dreams+of+a+Samurai.m4a")],
]
track_list.each do |name, album_id, ord, audio|
  Track.create!(name: name, album_id: album_id, ord: ord, audio: audio)
end

# /////////////////////////////////////////////////////////////////////
# //////////
# PLAYLISTS
# //////////
# playlist_list = [
#
# ]
# playlist_list.each do |name, creator_id|
#   Playlist.create!(name: name, creator_id: creator_id)
# end
# /////////////////////////////////////////////////////////////////////
# ////////////////
# TRACK_PLAYLISTS
# ////////////////
# track_playlist_list = [
#   [1, 1],
#   [1, 3],
#   [1, 5],
#   [1, 6],
#   [2, 1],
#   [2, 5],
#   [2, 6],
#   [3, 7],
#   [3, 8]
# ]
# track_playlist_list.each do |playlist_id, track_id|
#   TrackPlaylist.create!(playlist_id: playlist_id, track_id: track_id)
# end
