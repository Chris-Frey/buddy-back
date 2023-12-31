user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password", username: "AJ", name: "Jesus", photo: "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=1400&q=60", bio: "I'm cool", gender_identity: "male")
user2 = User.where(email: "chris@jcp.com").first_or_create(password: "password", password_confirmation: "password", username: "Chris12", name: "Chris", photo: "https://media.licdn.com/dms/image/C5603AQGPJpuCt00ZfA/profile-displayphoto-shrink_800_800/0/1643264241799?e=1695859200&v=beta&t=qW17TWhrSqxec_5lGllLZUBpsv99I0z8PWieOLwztNI", bio: "I'm also cool", gender_identity: "male")


activities = [
{   
    category: 'soccer',
    activity_name: '2v2 pick up game',
    activity_photo: 'https://images.unsplash.com/photo-1579952363873-27f3bade9f55?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2670&q=80',
    start_time: '1000',
    duration: 2,
    location: 'Imperial Beach',
    description: 'bring your own soccer ball',
    creator_id: user1.id
},
{   
    category: 'running',
    activity_name: '5k slow',
    activity_photo: 'https://images.unsplash.com/photo-1594882645126-14020914d58d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2685&q=80',
    start_time: '1100',
    duration: 0.5,
    location: 'Pacific Beach',
    description: 'Want to go at a pace we can still talk at',
    creator_id: user2.id
},
{   
    category: 'basketball',
    activity_name: '4v4 pick up game',
    activity_photo: 'https://images.unsplash.com/photo-1629901925121-8a141c2a42f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2400&q=80',
    start_time: '1400',
    duration: 2,
    location: 'UCSD Gym',
    description: 'bring your own basketball and drinks',
    creator_id: user1.id
},
{   
    category: 'weight lifting',
    activity_name: 'Leg day',
    activity_photo: 'https://images.unsplash.com/photo-1521804906057-1df8fdb718b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2670&q=80',
    start_time: '1900',
    duration: 2,
    location: 'IB',
    description: 'bring your own basketball and drinks',
    creator_id: user1.id
},
{   
    category: 'yoga',
    activity_name: 'Morning calm stretching',
    activity_photo: 'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2720&q=80',
    start_time: '730',
    duration: 1,
    location: 'Balboa park',
    description: "In the park, I'll bring some calming music",
    creator_id: user1.id
},
{   
    category: 'hiking',
    activity_name: 'Hiking Meadow loop for nature pictures',
    activity_photo: 'https://images.unsplash.com/photo-1682685797406-97f364419b4a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2670&q=80',
    start_time: '930',
    duration: 3,
    location: 'Mission Trails',
    description: "No music. Would like to take nature photos while we hike.",
    creator_id: user1.id
},
{   
    category: 'yoga',
    activity_name: 'sunset yoga with crystals',
    activity_photo: 'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2720&q=80',
    start_time: '1900',
    duration: 1,
    location: 'Sunset Cliffs',
    description: "Bring your own mat and water. I'll bring my crystals, but you're welcome to bring some too!.",
    creator_id: user1.id
},
{   
    category: 'dancing',
    activity_name: 'Salsa Under the Stars!!!',
    activity_photo: 'https://images.unsplash.com/photo-1525296416200-59aaed194d0c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2626&q=80',
    start_time: '1830',
    duration: 3,
    location: 'Little Italy',
    description: "I would like to dance a lot. I'm not a beginner so prefer partner that knows how to be a strong lead.",
    creator_id: user1.id
},
{   
    category: 'cycling',
    activity_name: 'Ride around Coronado',
    activity_photo: 'https://images.unsplash.com/photo-1620802090791-fd9420668913?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2669&q=80',
    start_time: '1900',
    duration: 1,
    location: 'The Del',
    description: "Not lance armstrong, but want to get a good workout in.  We'll go as fast as the slowest person can. ",
    creator_id: user1.id
},
{   
    category: 'weight lifting',
    activity_name: 'Crossfit',
    activity_photo: 'https://images.unsplash.com/photo-1521804906057-1df8fdb718b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2670&q=80',
    start_time: '700',
    duration: 1,
    location: 'Downtown',
    description: "Need a spotter, and I'll return the favor. Be able to spot for 200lb bench. Thanks",
    creator_id: user1.id
},
{   
    category: 'soccer',
    activity_name: 'Kicking the ball around',
    activity_photo: 'https://images.unsplash.com/photo-1579952363873-27f3bade9f55?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2670&q=80',
    start_time: '1500',
    duration: 1,
    location: 'Balboa Park - West Side',
    description: "Just want to pass the ball around a bit on this beautiful afternoon! ",
    creator_id: user1.id
},
{   
    category: 'running',
    activity_name: 'Training for Marathon',
    activity_photo: 'https://images.unsplash.com/photo-1594882645126-14020914d58d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2685&q=80',
    start_time: '800',
    duration: 1,
    location: 'Balboa Park - West Side',
    description: "15 mile day. I'm at a 3.5 hour marathon pace, so looking for someone around that.",
    creator_id: user1.id
},
{   
    category: 'weight lifting',
    activity_name: 'Late night session',
    activity_photo: 'https://images.unsplash.com/photo-1521804906057-1df8fdb718b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2670&q=80',
    start_time: '2200',
    duration: 1,
    location: 'Downtown',
    description: "I work nights so looking for someone to help each other with form and motivate.",
    creator_id: user1.id
},
{   
    category: 'dancing',
    activity_name: 'Club it up!!!!',
    activity_photo: 'https://images.unsplash.com/photo-1525296416200-59aaed194d0c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2626&q=80',
    start_time: '2230',
    duration: 1,
    location: 'Downtown',
    description: "Female dance partner please. One of the EDM clubs downtown, I'm open to suggestions if you don't like Baso's",
    creator_id: user1.id
},
{   
    category: 'Running',
    activity_name: 'North Park Beer Run',
    activity_photo: 'https://images.unsplash.com/photo-1594882645126-14020914d58d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2685&q=80',
    start_time: '1730',
    duration: 2,
    location: 'Downtown',
    description: "Hit up a 2 or 3 breweries as we do a 5k. I'm not in a rush but we shouldn't need more than an hour or two",
    creator_id: user1.id
},
{   
    category: 'yoga',
    activity_name: 'Active Flow at the Park',
    activity_photo: 'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2720&q=80',
    start_time: '1230',
    duration: 1,
    location: 'Balboa',
    description: "BYOM. going to find a shady tree and get some good flow going.",
    creator_id: user1.id
},
{   
    category: 'soccer',
    activity_name: '2v2 pick up game',
    activity_photo: 'https://images.unsplash.com/photo-1579952363873-27f3bade9f55?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2670&q=80',
    start_time: '1800',
    duration: 1,
    location: 'Imperial Beach',
    description: 'bring your own drinks, I have nets',
    creator_id: user1.id
},
{   
    category: 'basketball',
    activity_name: '2v2 pick up game',
    activity_photo: 'https://images.unsplash.com/photo-1629901925121-8a141c2a42f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2400&q=80',
    start_time: '1400',
    duration: 2,
    location: 'La Jolla Shores',
    description: 'Play for an hour, no rough game',
    creator_id: user1.id
},
{   
    category: 'hiking',
    activity_name: 'Torrey Pines Nature Walk',
    activity_photo: 'https://images.unsplash.com/photo-1682685797406-97f364419b4a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2670&q=80',
    start_time: '830',
    duration: 2,
    location: 'Torrey Pines',
    description: "Start at the parking lot and go up the hill.  Comedown on the beach and walk back towards the lot.  Happy to chill on the beach for a bit as well!",
    creator_id: user1.id
},
{   
    category: 'cycling',
    activity_name: 'Balboa Circuit',
    activity_photo: 'https://images.unsplash.com/photo-1620802090791-fd9420668913?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2669&q=80',
    start_time: '745',
    duration: 1,
    location: 'Balboa Park',
    description: "Let's hit it before traffic starts. Not a hardcore ride, but we're not going slow.",
    creator_id: user1.id
},
{   
    category: 'weight lifting',
    activity_name: 'Early lunch Crossfit',
    activity_photo: 'https://images.unsplash.com/photo-1521804906057-1df8fdb718b7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2670&q=80',
    start_time: '1030',
    duration: 1,
    location: 'Invictus',
    description: "Quick full-body circuit before lunch. Any experience level, just looking for someone to hype with.",
    creator_id: user1.id
},
{   
    category: 'Running',
    activity_name: 'Hill Sprints',
    activity_photo: 'https://images.unsplash.com/photo-1594882645126-14020914d58d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2685&q=80',
    start_time: '1030',
    duration: 0.5,
    location: 'Bird Rock',
    description: "Going hard on the hills. 10 minute warmup and then we go. I have a pre-set route ready!",
    creator_id: user1.id
},
{   
    category: 'Running',
    activity_name: 'Estuary Run',
    activity_photo: 'https://images.unsplash.com/photo-1594882645126-14020914d58d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2685&q=80',
    start_time: '730',
    duration: 2,
    location: 'Imperial Beach',
    description: "Sunrise out and back on the estuary trails. 1 stop for water. About 9 minute mile pace.",
    creator_id: user1.id
},
{   
    category: 'Running',
    activity_name: 'Lake Circuit',
    activity_photo: 'https://images.unsplash.com/photo-1594882645126-14020914d58d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2685&q=80',
    start_time: '845',
    duration: 2,
    location: 'Sweetwater Reservoir',
    description: "12 mile run around the water. Stops at 4 and 8 miles for about 5 min because I'm still getting good at this",
    creator_id: user1.id
},
{   
    category: 'yoga',
    activity_name: 'Vinyasa Flow',
    activity_photo: 'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2720&q=80',
    start_time: '830',
    duration: 1,
    location: 'Sunset Cliffs',
    description: "Down by the water at low tide. Bring your own mat.",
    creator_id: user1.id
},
{   
    category: 'Running',
    activity_name: 'Lake Circuit',
    activity_photo: 'https://images.unsplash.com/photo-1594882645126-14020914d58d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2685&q=80',
    start_time: '700',
    duration: 2,
    location: 'Lake murray',
    description: "10 laps since it's so short.",
    creator_id: user1.id
},
{   
    category: 'cycling',
    activity_name: 'Mountain Biking',
    activity_photo: 'https://images.unsplash.com/photo-1620802090791-fd9420668913?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2669&q=80',
    start_time: '800',
    duration: 1,
    location: 'Penasquitos Canyon',
    description: "More of a trail ride with a few hills. Doing it for fun, so we're not racing.",
    creator_id: user1.id
},
{   
    category: 'basketball',
    activity_name: '2v2 pick up game',
    activity_photo: 'https://images.unsplash.com/photo-1629901925121-8a141c2a42f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2400&q=80',
    start_time: '900',
    duration: 2,
    location: 'UCSD Gym',
    description: 'Nothing intense, just some early day fun and exercise',
    creator_id: user1.id
},
{   
    category: 'cycling',
    activity_name: 'Mountain Biking',
    activity_photo: 'https://images.unsplash.com/photo-1620802090791-fd9420668913?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2669&q=80',
    start_time: '1330',
    duration: 1,
    location: 'Mission Trails',
    description: "Just a short fun speed loop. Good cardio!",
    creator_id: user1.id
},
]

activities.each do |activity|
    Activity.create(activity)
    p "created: #{activity}"
end

user_activities = [
    {
        activity_id: 1,
        user_id: 2
    }
]

  user_activities.each do |activity|
    UserActivity.create(activity)
    p "created: #{activity}"
  end
