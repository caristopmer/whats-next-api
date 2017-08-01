Emotion.find_or_create_by(name: "joy")
Emotion.find_or_create_by(name: "fear")
Emotion.find_or_create_by(name: "anger")
Emotion.find_or_create_by(name: "tired")
Emotion.find_or_create_by(name: "sadness")
Emotion.find_or_create_by(name: "anxious")
Emotion.find_or_create_by(name: "disgust")
Emotion.find_or_create_by(name: "stress")

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
		"Jog around the block, or longer if you're up for it.", 
		"Listen to soothing music.", 
		"Listen to nature sounds.", 
		"Take a short nap.", 
		"Go for a bike ride.", 
		"Meditate.", 
		"Have a conversation with friends or family.", 
		"Go outside or open a window for fresh air.", 
		"Have a glass of water.", 
		"Play with your pet, or visit an animal shelter.", 
		"Picture a relaxing scene.", 
		"Sit in the sun for 15 minutes."
	],
	anger: [
		"Listen to your favorite song.", 
		"Take a moment to center yourself with deep breaths. Clear your mind.", 
		"Write a letter you do not intend to send.", 
		"Go for a walk.", 
		"Take deep breaths and think about something that makes you happy.", 
		"Go for a bike ride.", 
		"Go for a run.", 
		"Talk with friends or family.", 
		"Get some fresh air.", 
		"Go to the gym.", 
		"Go to the movies.", 
		"Do 10 push-ups. Do another 10 if it feels good.",
		"Yell into a pillow."
	],
	fear: [
		"Text a friend.", 
		"Focus on the present moment.", 
		"Focus on your breathing.",
		"Go for a walk.", 
		"Watch a comforting movie.", 
		"Meditate.", 
		"Talk to someone you trust.", 
		"Change your surroundings, if you can.", 
		"Listen to music.", 
		"Take a deep breath.", 
		"Share your feelings with a close friend."
	],
	joy: [
		"Call a friend.", 
		"Make someone laugh.", 
		"Hug a loved one.", 
		"Smile at a stranger.", 
		"Remain in the present.",
		"Take a moment to feel gratitude for all that you have!",
		"Journal about this moment.", 
		"Treat yourself with something you've wanted for a while."
	],
	sadness: [
		"Spend some time with your pet, or visit an animal shelter.", 
		"Write down your thoughts.", 
		"Take time to get out of the house.", 
		"Breathe.", 
		"Spend some time outside.", 
		"Take a short nap.", 
		"Drink a cup of tea.", 
		"Watch a funny movie.", 
		"Talk to family or friends.", 
		"Focus your energy on work or a hobby.", 
		"Take care of an easy task or small chore, like emptying the dishwasher.",
		"Cry, if you want to.",
		"Call or text someone close to you.",
		"Have you eaten recently? Have a healthy snack.",
		"Take a shower or soothing bath."
	],
	anxious: [
		"Inhale as deeply as you can, and exhale slowly.",
		"Drink a cold glass of water or milk.",
		"Interact with your pet, or visit an animal shelter.",
		"Take a moment to stretch.",
		"Take stock of your immediate environment, and change one thing for the better.",
		"Have a cup of tea.", 
		"Speak with someone you trust.", 
		"Seek out a friend or loved one.", 
		"Go for a walk.", 
		"Treat yourself to a snack that you enjoy.", 
		"Meditate.", 
		"Go for a run.", 
		"Listen to relaxing music.", 
		"Make a list."
	],
	disgust: [
		"Spend a moment to consider the root of your current emotional state.", 
		"Go for a walk.", 
		"Try to use your empathy.", 
		"Express your feelings in a constructive way.", 
		"Remove yourself from your current surroundings."
	],
	tired: [
		"Get up and move around.", 
		"Drink a cold glass of water.", 
		"Get a cup of coffe or your favorite tea.", 
		"Tell a joke.", 
		"Did you get much sleep? Try closing your eyes for 20 minutes.", 
		"Take a shower, or wash your face in cold water.", 
		"Take a break for a few moments."
	]
}

actions.each do |emotion, action_array|
	action_array.each do |action|
		EmotionAction.find_or_create_by(
			emotion: Emotion.find_by(name: emotion),
			action: Action.find_or_create_by(action: action))
	end
end

Emotion.find_or_create_by(name: "stuck")
EmotionAction.find_or_create_by(
	emotion: Emotion.find_by(name: "stuck"),
	action: Action.find_or_create_by(action: "stuck")
)