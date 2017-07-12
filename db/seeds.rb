# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    records = Record.create([
      {
        name: 'Seattle Symphony',
        artist: 'Joe McPhee',
        price: 18.00,
        description:
        "Kye is proud to present Seattle Symphony, the new LP by Poughkeepsie's Joe McPhee. 'Seattle has become my home away from home, my second city, since first being invited to join trombonist Stuart Dempster for duets in 1984. When the opportunity for a solo concert arose, I learned of the passing of Bill Dixon and Fred Anderson and decided to make the focus of the performance a celebration of the lives, and music, of these two legendary heroes, who both passed away in June of 2010, within 8 days of each other.' (Joe McPhee). Seattle Symphony arrives in a full color high gloss sleeve in an edition of 300 copies.",
        photo_url: "http://www.forcedexposure.com/App_Themes/Default/Images/product_images/close_up/k/KYE047LP_CU.jpg"
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
    ])
