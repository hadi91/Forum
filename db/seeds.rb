Comment.delete_all
Topic.delete_all
User.delete_all

user_mark = User.create(firstname: "Mark", lastname: "Lee", email: "mark.lee@gmail.com")
user_sun = User.create(firstname: "Sun", lastname: "Ho", email: "sun.ho@gmail.com")

topic_drama = Topic.create(title: "Drama", body: "What is the best drama in Singapore?", user: user_mark )
topic_coe = Topic.create(title: "COE", body: "Highest COE in Singapore?", user: user_mark )
topic_facial = Topic.create(title: "Facial", body: "Best Facial for men?", user: user_mark )

topic_song = Topic.create(title: "Song", body: "Best song in Singapore?", user: user_sun )
topic_money = Topic.create(title: "Money", body: "Where do you keep your money?", user: user_sun )
topic_dance = Topic.create(title: "Dance", body: "The most popular dance right now", user: user_sun )

Comment.create(body: "drama in singapore sucks", topic: topic_drama, user: user_sun)
Comment.create(body: "why would guys need facial?", topic: topic_facial, user: user_sun)

Comment.create(body: "definitely not your songs", topic: topic_song, user: user_mark)
Comment.create(body: "duh, the bank. Where else...", topic: topic_money, user: user_mark)
