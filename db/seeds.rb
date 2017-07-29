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

# Action.create(content: "Go for a walk (tired)")
# Action.create(content: "Eat a burrito (anxious)")
# Action.create(content: "Play fetch with your dog (sadness)")
# Action.create(content: "Go for a run (fear)")
# Action.create(content: "Have some ice cream (disgust)")
# Action.create(content: "Go to the movies (anger)")
# Action.create(content: "Play some videogames (stress)")
# Action.create(content: "Mow your lawn (joy)")

# Recommendation.create(emotion: Emotion.find_by(name: "joy"), action: Action.find(8))
# Recommendation.create(emotion: Emotion.find_by(name: "fear"), action: Action.find(4))
# Recommendation.create(emotion: Emotion.find_by(name: "anger"), action: Action.find(6))
# Recommendation.create(emotion: Emotion.find_by(name: "tired"), action: Action.find(1))
# Recommendation.create(emotion: Emotion.find_by(name: "sadness"), action: Action.find(3))
# Recommendation.create(emotion: Emotion.find_by(name: "anxious"), action: Action.find(2))
# Recommendation.create(emotion: Emotion.find_by(name: "disgust"), action: Action.find(5))
# Recommendation.create(emotion: Emotion.find_by(name: "stress"), action: Action.find(7))

Emote.create(input: "I am happy", recommendation: Recommendation.find_by(emotion: Emotion.find_by(name: "joy")))



actions = {
	stress: [
		"Stretch.", 
		"Take a break to play a short game.", 
		"Go for a walk.", 
		"Doodle.", 
		"Write down your lingering thoughts.", 
		"Focus on structured breathing.", 
		"Call a close friend.", 
		"Immerse yourself in a hobby you enjoy.", 
		"Work out.", 
		"Listen to soothing music.", 
		"Listen to nature sounds.", 
		"Go for a run.", 
		"Take a short nap.", 
		"Go for a bike ride.", 
		"Medidate.", 
		"Go for a walk.", 
		"Have a conversation with friends or family.", 
		"Go outside.", 
		"Have a glass of water.", 
		"Play with your pet, or visit an animal shelter.", 
		"Picture a relaxing scene.", 
		"Sit in the sun for 15 minutes."
	],
	anger: [
		"Listen to your favorite song.", 
		"Take a moment to be present in the moment.", 
		"Write a letter you do not intend to send.", 
		"Take a time out.", 
		"Go for a walk.", 
		"Take deep breaths and think about something that makes you happy.", 
		"Go for a bike ride.", 
		"Go for a run.", 
		"Talk with friends or family.", 
		"Get some fresh air.", 
		"Go to the gym.", 
		"Go to the movies."
	],
	fear: [
		"Text a friend.", 
		"Focus on the present moment.", 
		"Focus on your breathing.", 
		"Seek out support.", 
		"Go for a walk.", 
		"Watch a comforting movie.", 
		"Meditate.", 
		"Exercise.", 
		"Talk to someone you trust.", 
		"Change your surroundings.", 
		"Listen to music.", 
		"Take a deep breath.", 
		"Share your feelings with a close friend."
	],
	joy: [
		"Go for a walk.", 
		"Call a friend.", 
		"Make someone laugh.", 
		"Hug a loved one.", 
		"Exercise.", 
		"Smile at a stranger.", 
		"Remain in the present.", 
		"Go outside.",
		"Mow your lawn."
	],
	sadness: [
		"Do some push-ups.", 
		"Spend some time with your pet, or visit an animal shelter.", 
		"Seek out support.", 
		"Write down your thoughts.", 
		"Take time to get out of the house.", 
		"Breathe.", 
		"Spend some time outside.", 
		"Take a short nap.", 
		"Drink a cup of tea.", 
		"Watch a funny movie.", 
		"Talk to family or friends.", 
		"Focus your enery on work or a hobby.", 
		"Spend some time to take care of an easy task."
	],
	anxious: [
		"Eat a burrito.",
		"Focus on breathing.", 
		"Have a cup of tea.", 
		"Speak with someone you trust.", 
		"Seek out a friend or loved one.", 
		"Go for a walk.", 
		"Treat yourself to a snack that you enjoy.", 
		"Meditate.", 
		"Take a deep breath.", 
		"Stretch.", 
		"Go for a run.", 
		"Listen to relaxing music.", 
		"Make a list."
	],
	disgust: [
		"Spend a moment to consider the root of your current emotional state.", 
		"Go for a walk.", 
		"Try to use your empathy.", 
		"Express your feelings in a constructive way.", 
		"Remove yourself from your current surroundings.",
		"Have some ice cream."
	],
	tired: [
		"Get up and move around.", 
		"Drink water.", 
		"Stay active.", 
		"Go for a walk.", 
		"Get a cup of coffe.", 
		"Have a cup of tea.", 
		"Tell a joke.", 
		"Take a short nap.", 
		"Meditate.", 
		"Exercise.", 
		"Go for a run.", 
		"Take a break for a few moments."
	]
}

actions.each do |emote, action_array|
	action_array.each do |action|
		Action.create(content: "#{action} (#{emote})")
		Recommendation.create(emotion: Emotion.find_by(name: emote), action: Action.last)
	end
end