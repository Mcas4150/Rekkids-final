Track.destroy_all
Record.destroy_all


require "stripe"
Stripe.api_key = "sk_live_94QJv8LvoiP45cA7zi1AV46k"
my_listings = []

discogs = Discogs::Wrapper.new("La Rama", user_token: "tJTZwyDlsmmQCxOjBBhNygEucUsbKELlYfTzsZYp")

user = discogs.get_identity
inventory1 = discogs.get_user_inventory(user.username, status: "For Sale", sort_order: "desc", page: 1, per_page: 100)
inventory2 = discogs.get_user_inventory(user.username, status: "For Sale", sort_order: "desc", page: 2, per_page: 100) rescue nil
inventory3 = discogs.get_user_inventory(user.username, status: "For Sale", sort_order: "desc", page: 3, per_page: 100) rescue nil
inventory4 = discogs.get_user_inventory(user.username, status: "For Sale", sort_order: "desc", page: 4, per_page: 100) rescue nil
inventory5 = discogs.get_user_inventory(user.username, status: "For Sale", sort_order: "desc", page: 5, per_page: 100) rescue nil


listings1 = inventory1.listings
listings1.each do |listing|
  if listing['status'] == 'For Sale'
    temp = {}
    temp[:release_id] = listing.release['id']
    temp[:description] = listing.release['description']
    temp[:price_cents] = listing.original_price['value'].round
    my_listings << temp
  end
end

listings2 = inventory2.listings
listings2.each do |listing|
  if listing['status'] == 'For Sale'
    temp = {}
    temp[:release_id] = listing.release['id']
    temp[:description] = listing.release['description']
    temp[:price_cents] = listing.original_price['value'].round
    my_listings << temp
  end
end

listings3 = inventory3.listings
listings3.each do |listing|
  if listing['status'] == 'For Sale'
    temp = {}
    temp[:release_id] = listing.release['id']
    temp[:description] = listing.release['description']
    temp[:price_cents] = listing.original_price['value'].round
    my_listings << temp
  end
end

listings4 = inventory4.listings
listings4.each do |listing|
  if listing['status'] == 'For Sale'
    temp = {}
    temp[:release_id] = listing.release['id']
    temp[:description] = listing.release['description']
    temp[:price_cents] = listing.original_price['value'].round
    my_listings << temp
  end
end








total = 0

my_listings.each do |listing|
  record = discogs.get_release(listing[:release_id])




 mynewrecord = Record.new(
      name: record['title'],
      # tracklist:  record['tracklist'],
      release_id: listing[:release_id],
      price_cents: listing[:price_cents],
      year: record["year"],
      description: listing[:description],
      country: record['country'],
      genre: record['styles'],
      cart: false

  )
   mynewrecord.genre = record['styles'][0] rescue nil
  mynewrecord.photo = record["images"][0]['uri'] rescue "https://i.imgur.com/Ol4JwTG.jpg"
  mynewrecord.label = record["labels"][0]['name'] rescue nil
  mynewrecord.catno = record['labels'][0]['catno'] rescue nil
  mynewrecord.youtubeid = record['videos'][0]['uri'] rescue nil
  mynewrecord.artist = record['artists'][0]['name'] rescue nil

 # Stripe::Product.create(
 #  name: record['title'],
 #  description: listing[:description],
 #  attributes: listing[:price_cents],
 #  )

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



