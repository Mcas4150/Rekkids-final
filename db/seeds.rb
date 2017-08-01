my_listings = []

discogs = Discogs::Wrapper.new("La Rama", user_token: "emwVPSaiMzcjhTyDAjMrRGcfTFNZLvAPSxwozkDh")

user = discogs.get_identity
inventory = discogs.get_user_inventory(user.username)
listings = inventory.listings
listings.each do |listing|
  if listing.status == 'Draft'
    temp = {}
    temp[:release_id] = listing.release['id']
    temp[:price] = listing.original_price['value']
    my_listings << temp
  end
end

count = 0

my_listings.each do |listing|
  record = discogs.get_release(listing[:release_id])


  record['tracklist']

 mynewrecord = Record.new(
      photo: record["images"][0]['uri'],
      name: record['title'],
      artist: record['artists'][0]['name'],
      label: record['label'][0]['name'],
      price: listing[:price],
      year: record["year"],
      catno: record['label'][0]['catno'],
      country: record['country'],
      genre: record['styles'].pop,
      youtubeid: record['videos'][0]['uri']
  )

  count += 1
  puts "#{count} out of #{my_listings.length} complete..."
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



