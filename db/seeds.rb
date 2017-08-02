Track.destroy_all
Record.destroy_all

my_listings = []

discogs = Discogs::Wrapper.new("La Rama", user_token: "emwVPSaiMzcjhTyDAjMrRGcfTFNZLvAPSxwozkDh")

user = discogs.get_identity
inventory = discogs.get_user_inventory(user.username, per_page: 100)
listings = inventory.listings
listings.each do |listing|
  if listing['status'] == 'For Sale'
    temp = {}
    temp[:release_id] = listing.release['id']
    temp[:description] = listing.release['description']
    temp[:price_cents] = listing.original_price['value']
    my_listings << temp
  end
end

total = 0

my_listings.each do |listing|
  record = discogs.get_release(listing[:release_id])


  record['tracklist']

 mynewrecord = Record.new(
      name: record['title'],

      release_id: listing[:release_id],
      price_cents: listing[:price_cents],
      year: record["year"],
      description: listing[:description],
      country: record['country'],
      genre: record['styles'].pop

  )
  mynewrecord.photo = record["images"][0]['uri'] rescue nil
  mynewrecord.label = record["labels"][0]['name'] rescue nil
  mynewrecord.catno = record['labels'][0]['catno'] rescue nil
  mynewrecord.youtubeid = record['videos'][0]['uri'] rescue nil
  mynewrecord.artist = record['artists'][0]['name'] rescue nil

  total += 1
  puts "#{total} out of #{my_listings.length} complete..."
  sleep(1)

  if mynewrecord.save == false
    puts "oops something shitty happened"
  end

  record['tracklist'].each do |track|
    Track.create(
      record: mynewrecord,
      position: track['position'],
      title: track['title'],
      duration: track['duration']
      )

  end
end



