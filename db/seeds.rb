# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    records = Record.create([
      {
        name: 'Buy or Die!',
        artist: 'Matteo Torcinovich',
        price: 18.00,
        description:"Goodfellas present Buy Or Die! Ralph Records Artworks 1972-2015, the first ever book of its kind on the history of the artwork of The Residents and their label Ralph Records. The life of Ralph Records and The Residents has always been cloaked in obscure mysteries, woven by the anonymous Cryptic Corporation, around which many luminaries have revolved; painters, graphic artists, cartoonists, musicians, film-makers, and writers. All have been channeled together by a powerful creative synergy that helped champion a new, mercurial and thoroughly multi-faceted artifact. Buy Or Die!, for the very first time, brings together a collection of images that represented the sounds of Ralph from 1972 to the present. A historical journey that traces the path of one of the most innovative record labels of the last fifty years. A collection of original, rare, and remarkable images drawn from record covers, fan catalogs, posters, and a wide variety of promotional material, demonstrating the technological and stylistic adaptations undergone through the arc of half a century. 400-page color book in English and Italian",
        photo_url: "http://www.forcedexposure.com/App_Themes/Default/Images/product_images/close_up/g/GF77006BK_CU.jpg"
      },
      {
        name: "The McDonald's Prayer",
        artist: "Asda",
        price: 15.00 ,
        description: "Sacreligious iconoclasts, Chester Giles and Seb Gainsborough (Vessel) aka ASDA genuflect at the greasy altar of Ronald and co with the succinct McDonald’s Prayer backed with a downcast Regrind by erstwhile Japan Blues resetting Giles’ ‘prayer’ to a coolly pendulous boom clap and church organ, before the EP ends in the puddled dub of Ossia’s queasy Milkshake Mix.

Fast food. Slow music. Very satisfying ",
        photo_url: "https://assets.boomkat.com/spree/products/434022/large/asda.jpg"
      },
      {
        name: "The Kid",
        artist: "Kaitlyn Aurelia Smith",
        price: 18.00 ,
        description: "In 2017, the musical term “electronic” is nearly obsolete given the ubiquity of computerized processes in producing music. Even so, the prevailing assumption is that musicians working under this broad umbrella must be inspired by concepts equally as electrified as their equipment. Kaitlyn Aurelia Smith has demonstrated in her still-blooming discography that this notion couldn’t be further from the truth, and that more often than not, rich worlds of synthesized naturalist David Attenborough as a contemporary muse) has embodied such an appreciation on The Kid in as direct and sincere a way as possible by sonically charting the phases of life itself. ",
        photo_url: "https://assets.boomkat.com/spree/products/433838/large/656605359960_T34453976570054.jpg"
      },
      {
        name: "The Never End",
        artist: "HANNA",
        price: 26.00 ,
        description: "Sandwiched between two floating ambient bookends you’ll find some serious jazz house class in Punk, a whipsmart sort of ghetto-tech compatible with liquid UK D&B in Deceptiv, and two courses of chord-driven debonaire deep house in July and Twombleys Glen.",
        photo_url: "https://assets.boomkat.com/spree/products/422606/large/abba81df-e3fd-4c21-9a4c-1bd32df135aa.jpg"
      },
      {
        name: "Theory of Colors",
        artist: "Dauwd",
        price: 15.00 ,
        description: "Warm and fuzzy house nodding to classic Detroit beatdown from a UK perspective for Technicolour. Check for excellent weightless ambient dimensions in Murmure and his best Theo P vibes on Analogische Memories",
        photo_url: "https://assets.boomkat.com/spree/products/420212/large/dauwd-theoryofcolour.jpg"
      },
      {
        name: "Glowing in the Dark",
        artist: "Experimental Products",
        price: 10.00,
        description: "Arguably one of the greatest synth-pop 12”s of the ‘80s - and we don’t use that lightly - Glowing In The Dark is a tried and tested ‘floor-filler which has been out of circulation on a quality pressing for waaay too long - hence the fact 2nd hand copies are now going for triple figures.
The glorious title cut of lustrous NRG arpeggios, soaring synth and ice cold vocal is charged to the A-side, coiling nine minutes of pure dancefloor class whilst the other side holds the more mellow élan of Love Changes and another fully fledged winner in The Mannequin.
Kinda unmissable, really.
",
        photo_url: "https://assets.boomkat.com/spree/products/324633/large/VOD_DJ1.jpg"
      },
      {
        name: 'Watashi Dake',
        artist: 'Keiji Haino',
        price: 27.50,
        description: "Black Editions present the first vinyl reissue of Keiji Haino's stunning debut album Watashi Dake?, originally released in 1981. This first ever edition released outside of Japan features the artist's originally intended metallic gold and silver jacket artwork. Over the last fifty years few musicians or performers have created as monumental and uncompromising a body of work as that of Keiji Haino. Through a vast number of recordings and performances, Haino has staked out a ground all his own, creating a language of unparalleled intensity that defies any simple classification. For all this, his 1981 debut album Watashi Dake? has remained enigmatic. Originally released in a small edition by the legendary Pinakotheca label, the album was heard by only a select few in Japan and far fewer overseas. Original vinyl copies became impossibly rare and highly sought after the world over. Watashi Dake? presents a haunting vision -- stark vocals, whispered and screamed, punctuate dark silences. Intricate and sharp guitar figures interweave, repeat, and stretch, trance-like, emerging from dark recesses. Written and composed on the spot -- Haino's vision is one of deep spiritual depths that distantly evokes 1920s blues and medieval music -- yet is unlike anything ever committed to record before or since. Produced in close cooperation with Keiji Haino and legendary photographer Gin Satoh. Coupled with starkly minimal packaging, featuring the now iconic cover photographs by Gin Satoh, the album is a startling and fully realized artistic statement.",
        photo_url: "http://www.forcedexposure.com/App_Themes/Default/Images/product_images/close_up/b/BE000LP_CU.jpg"
      },
      {
        name: 'Dead Saints Chronicles',
        artist: 'Burnt Friedman',
        price: 17.00,
        description: "Another utterly brilliant salvo from Friedman -- after the future-classic 'Masque', and the Pestle EP for Latency. Six kinds of musical occultism -- transcendent and nocturnal, geometric but intuitive, like a djinn testing a logic map -- nodding to Solomon and West's compendious book about near-death experiences.",
        photo_url: "http://www.forcedexposure.com/App_Themes/Default/Images/product_images/close_up/m/MARIONETT005EP_CU.jpg"
      },
      {
        name: 'Prose Combat',
        artist: 'Mc Solaar',
        price: 17.00,
        description: "this is Milan's favorite record",
        photo_url: "https://img.discogs.com/fY6-eMkZTyPydoMSze3GXOgQh2o=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-1340359-1377522377-2121.jpeg.jpg"
      },
      {
        name: 'Perverted By Language',
        artist: 'The Fall',
        price: 24.00,
        description: "The Fall returned to Rough Trade in 1983 to release a pair of singles ('The Man Whose Head Expanded' and 'Kicker Conspiracy') and Perverted By Language, their sixth proper studio album. Perverted By Language hints at the band's shift towards a distinctly pop approach, one that they would perfect via their Beggars Banquet output that immediately followed. Yet again, the force and panic of their initial Rough Trade recordings remains the foundation for much of the album. A transitional recording in the absolute best sense, Perverted By Language is The Fall both as they were and as they would become. The emergence of Brix Smith is often cited as the impetus for The Fall's move toward outward pop, and she first makes her first appearance with the band on Perverted By Language. Nowhere is her presence felt more than on 'Hotel Blöedel,' where she handles lead vocal duties alongside Mark E. Smith whose mangled violin accompaniment roots the song's cold romanticism in his unmistakable brand of strange. 'Garden' provides a new take on The Fall's stretched-out tendencies -- using ringing, clean guitars to build a nearly 10-minute epic more subtly than ever before. The opener, 'Eat Y'self Fitter,' is wholly classic Fall: a playfully circular bass line drives the album's strongest vocal spout, complete with emphatic breaks where Mark E. Smith issues the song's spiteful decree with equal parts glee and scorn. Superior Viaduct's edition is the first time that Perverted By Language has been available on vinyl domestically.",
        photo_url: "http://www.forcedexposure.com/App_Themes/Default/Images/product_images/close_up/s/SV127LP_CU.jpg"
      },
      {
        name: 'Wins the World Cup',
        artist: 'Scientist' ,
        price: 22.00 ,
        description: "Repressed; LP version. Scientist's name can be found all over any dub record collection; he was a protégé of King Tubby, and many would say that when dub fell on quieter times it was Scientist who breathed new life into it. His pared-down mixing style suited the dancehall reggae sound that arrived as the '70s rolled into the '80s. This 1982 album includes the priceless dub of Johnny Osbourne's classic 'Give a Little Love,' as well as further cuts of the likes of Hugh Mundell and Wayne Jarrett. Scientist is always in control. This reissue includes the complete original album (which listed its tracks only as 'Five Dangerous Matches' on each side), plus six bonus tracks.",
        photo_url: "http://www.forcedexposure.com/App_Themes/Default/Images/product_images/close_up/m/MIR100741LP_CU.jpg"
      },
      {
        name: 'Tchashm-e-Del',
        artist: 'Morteza Hannaneh',
        price: 20.00 ,
        description: "The Paris-based Collapsing Market label unveil a gem of found art with Tschashm-e-Del: a radio play recorded in Iran sometime during the '60s by Morteza Hannaneh, co-founder of the Tehran Symphony Orchestra with Parvis Mahmoud, and the grandfather of Collapsing Market co-owner Cyrus Goberville, who discovered the recording on a tape at his home. Without definitive records to go from, Tschashm-e-Del was presumably recorded in the '60s (certainly pre-revolution) and quite possibly broadcast on Radio Tehran. Now restored from the original reels, it reveals a gorgeous and important suite of music set to a Ghazal -- an ancient Arabic ode, or poetic expression of the pain and beauty of love, loss or separation -- written by Hatef Esfehani, who was a famous Iranian poet of the 18th century. The ghazal deals with the founding principles of Sufism and monotheism through a love story between Hatef and a Christian girl, with Morteza Hannaneh's musical arrangement matching the specific rhyming structure of its ancient classical form, itself rooted in tradition stretching back to at least the 10th century, whilst also incorporating string elements of western orchestration relating to Hannaneh's background in composing for cinema. It's the kind of music you might expect to turn up on a Folkways or Dead-Cert release. It's presented with artwork made by Thomas Jeppe, a noted artist familiar with Persian culture; the sleeve image depicts the Ashura procession. Edition of 500.",
        photo_url: "http://www.forcedexposure.com/App_Themes/Default/Images/product_images/close_up/c/CLPMR003LP_CU.jpg"
      },
      {
        name: "Blue Pedro",
        artist: "Bullion",
        price: 17.00,
        description: "From his 'Rivertrance' remix for Model 500 on R&S to 2015's middle-eastern jig 'Stuck In The Muddle', Bullion has shown a consistent interest in combining ancient Celtic polyrhythms with modern production. His recent cassette for The Trilogy Tapes, All Abawd, which garnered praise from Ben UFO, contained more nods to Gaelic culture alongside a unique blend of broader world influences. His latest 12 expands on 3 tracks from the TTT mixtape, applying a focused and groove-based approach. A-side 'Blue Pedro' presents a joyful reel set to staccato synth rounds and a progressive backbeat. 'Muy Quimeda' adopts a sweeter, but nonetheless driving tone; forlorn female vocals and lush harmonies swooning over an arpeggiating foot-to-the-floor swing. 'Spin2Glory' shows a darker and heavier intention, with punchy kicks and claps bolstering FM bass hooks. A sea shanty gone overboard.",
        photo_url: "http://www.forcedexposure.com/App_Themes/Default/Images/product_images/close_up/t/TRILOGY058EP_CU.jpg"
      },
      {
        name: "Tres Precieux Sang",
        artist: "Accident Du Travail",
        price: 26.00 ,
        description: "Terrific record! Eight charged, intimate meditations by Julie Normal and Olivier Demeaux, playing a rickety ondes Martenot and an old church harmonium. Gripping, detailed, stately improvisation -- a bit like the ùrlars in classical bagpipe music -- which nervily mixes the sternly doom-laden with precarious, other-worldly wonderment. (The ondes Martenot is an amazing twentieth-century instrument -- beloved by Messiaen, for example, and Varese. The theme-song of Star Trek is a vocal forgery of its sound. 'J'aime cette fragilité qui côtoie la capacité de te décoller le tympan sur certaines fréquences inopinément,' says Julie. 'Je tiens une bombe dans les mains. J'aime son instabilité, son humanité.') Wood, breath, blood, eggshells... on the night of a purple moon. Very warmly recommended.",
        photo_url: "http://www.forcedexposure.com/App_Themes/Default/Images/product_images/close_up/t/TRILOGY038LP_CU.jpg"
      },
      {
        name: "Raft",
        artist: "Mike Cooper",
        price: 26.00 ,
        description: "Mike Cooper's output of the past half century has been described as 'post-everything'. It's a fitting phrase really when you consider he has been at the beating heart of so many critical musical moments; from the development of the blues touring circuit in the UK, through the growth of the folk scene and into the explosion of free improvisation that came to define a generation of UK musicians. Amidst it all, working at stitching these disparate forms into some kind of de-territorialized zone, was Mike Cooper. It's fitting that he explores the notion of journey on his latest full-length edition. Even more fitting that he examines the vessels that carry us on journeys. With Raft, Cooper charts his interests in ambient exotica and collides it with his research into various South Pacific musical traditions. The record extends his palette considerably, stretching away from the hypnagogic flows of his master piece Rayon Hula (2004), into a more oceanic setting. 'Raft 21 - Guayaquil To Tully', for example, sets out a lilting rise and fall of harmony which erupts with spluttering electronics. Specifically inspired by Vital Alsar and William Wills, sailors who undertook some of the 20th century's most impressive solo voyages, Raft reflects upon the determination of the solo traveler. In a musical sense, Mike Cooper's work of recent years has very much reflected a determined solo traveler work ethic. In his commitment to travel alone, he has developed a range of strategies that he works against as a means of surprising himself and uncovering unfamiliar sonic relations. This approach has proved an incredibly fertile pursuit for Cooper, arguably producing some of his most affecting and engaging works, his Room40 albums Fratello Mare (RM 462LP, 2015) and White Shadows Of The South Seas (RM 454CD, 2013) amongst them. Raft is a vital record that sets its sights beyond the horizons of convention and in doing so reveals a perspective that is only available to lifelong voyagers such as Mike Cooper. From Mike: 'Raft is my tribute to William Willis, Vita Alsar, Jack London, Robert Louis Stevenson, Louis Becke, Adolph Plate, Jacques Brel, FW Murnau and to all sailors, scribblers and drifters everywhere.'",
        photo_url: "http://www.forcedexposure.com/App_Themes/Default/Images/product_images/close_up/r/RM484LP_CU.jpg"
      },
      {
        name: "Tres Precieux Sang",
        artist: "Accident Du Travail",
        price: 26.00 ,
         description: " ",
         photo_url: "http://www.forcedexposure.com/App_Themes/Default/Images/product_images/close_up/t/TRILOGY038LP_CU.jpg"
      },
      {
        name: "Tres Precieux Sang",
        artist: "Accident Du Travail",
        price: 26.00 ,
        description: " ",
         photo_url: "http://www.forcedexposure.com/App_Themes/Default/Images/product_images/close_up/t/TRILOGY038LP_CU.jpg"
      },
      {
        name: "Garzweiler",
        artist: "Von Spare",
        price: 26.00 ,
        description: "Von Spar’s wistful avant-dance-pop in full swing here, from chufty chamber prog efforts like ‘Metaxourgío’ to pointillist tribal patter on ‘Garzweiler III’ and triplet anchored dub house-come-trip hop with Burial-esque flourishes on ‘Omónia’",
        photo_url: "https://assets.boomkat.com/spree/products/432888/large/880918226156.jpg"
      }
    ])
