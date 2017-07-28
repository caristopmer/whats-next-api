# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Emotion.create(name: "joy")
Emotion.create(name: "fear")
Emotion.create(name: "anger")
Emotion.create(name: "tired")
Emotion.create(name: "sadness")
Emotion.create(name: "anxious")
Emotion.create(name: "disgust")
Emotion.create(name: "stress")

Action.create(content: "Go for a walk (tired)")
Action.create(content: "Eat a burrito (anxious)")
Action.create(content: "Play fetch with your dog (sadness)")
Action.create(content: "Go for a run (fear)")
Action.create(content: "Have some ice cream (disgust)")
Action.create(content: "Go to the movies (anger)")
Action.create(content: "Play some videogames (stress)")
Action.create(content: "Mow your lawn (joy)")

Recommendation.create(emotion: Emotion.find_by(name: "joy"), action: Action.find(8))
Recommendation.create(emotion: Emotion.find_by(name: "fear"), action: Action.find(4))
Recommendation.create(emotion: Emotion.find_by(name: "anger"), action: Action.find(6))
Recommendation.create(emotion: Emotion.find_by(name: "tired"), action: Action.find(1))
Recommendation.create(emotion: Emotion.find_by(name: "sadness"), action: Action.find(3))
Recommendation.create(emotion: Emotion.find_by(name: "anxious"), action: Action.find(2))
Recommendation.create(emotion: Emotion.find_by(name: "disgust"), action: Action.find(5))
Recommendation.create(emotion: Emotion.find_by(name: "stress"), action: Action.find(7))