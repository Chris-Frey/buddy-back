user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password", username: "AJ", name: "Jesus", photo: "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=1400&q=60", bio: "I'm cool", gender_identity: "male" )
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password", username: "Chris12", name: "Chris", photo: "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Z3V5fGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60", bio: "I'm also cool", gender_identity: "male" )


user1_activities = [
{   
    category: 'soccer',
    activity: '2v2 pick up game',
    activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
    start_time: '10am',
    duration: 2,
    location: 'IB',
    description: 'bring your own soccer ball'
},
{   
    category: 'volleyball',
    activity: '5v5 pick up game',
    activity_photo: 'https://c4.wallpaperflare.com/wallpaper/111/924/40/volleyball-balls-volleyball-sports-wallpaper-preview.jpg',
    start_time: '11am',
    duration: 2,
    location: 'IB',
    description: 'bring your own drinks ball'
},
{   
    category: 'basketball',
    activity: '4v4 pick up game',
    activity_photo: 'https://c4.wallpaperflare.com/wallpaper/603/531/714/basketball-basketball-court-sport-top-view-wallpaper-preview.jpg',
    start_time: '2pm',
    duration: 2,
    location: 'IB',
    description: 'bring your own basketball and drinks'
},

user2_activities = [
    {   
        category: 'soccer',
        activity: '2v2 pick up game',
        activity_photo: 'https://publicdomainvectors.org/photos/1292286629.png',
        start_time: '8am',
        duration: 2,
        location: 'SD',
        description: 'bring your own soccer ball'
    },
    {   
        category: 'volleyball',
        activity: '5v5 pick up game',
        activity_photo: 'https://c4.wallpaperflare.com/wallpaper/111/924/40/volleyball-balls-volleyball-sports-wallpaper-preview.jpg',
        start_time: '6am',
        duration: 2,
        location: 'TJ',
        description: 'bring your own drinks ball'
    },
]
]


user1_activities.each do |activity|
    user1.activities.create(activity)
    p "created: #{activity}"
  end
user2_activities.each do |activity|
    user1.activities.create(activity)
    p "created: #{activity}"
  end

