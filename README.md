# Intro to Active Record
Relationship models:

Class Role many users one adventure

Class Story many roles many users

Class User one rolls one adventure


User Story:

MVP
User creates a user name
User can choose between 2 roles
User can choose 3 options for each step of the adventure (quit is always an option)
Data persists if user quits and logs back in later. 
User has 2 conditions to end the game (winning or losing)

Stretch
Previous choices affect winning condition.
Limit on use of abilities throughout adventure. 
Choices can add or remove ability scores throughout adventure. 
Final encounter has randomized results through RNG generator.
User can choose a 3rd Role.
User can gain XP to gain benefits to continue to second adventure.


Story options:

Starting options:
	Get Coffee
	
		Get Starbucks
		
		Destroy coffee maker
	
	Destroy phone
	
		Get Starbucks
		
		Destroy coffee maker
	
	
Continuing from house:
Gas light on
	Get Sbux first, you've got a reward
		Sbux/Ex story
	
	Get gas, you can grab a coffee at the gas station.
		Old Lady story
	
Run out of gas
	Push car to gas station
		Credit declined story
	
	Hitch a ride
		Flat tire story



Credit card declined
	Destroy gas station
		Gas explosion/caught by cops, you lose
	
	Get 5$ from someone
		Ask Old Lady
			She turns into an ogre and kills you, you lose
		
		Ask another person filling up
			You get $5!
				You get to City Hall and blast/smash the dragon


Old lady in road
	Fireball/run her over 
		She turns into an ogre and squishes you, you lose
	
	Give her a ride
		Moves to run out of gas


Run into Ex at Starbucks
	Hide/avoid
		Moves into old lady on road
	
	Fireball/mace
		Your Ex is formidable and takes you down, you lose


Flat Tire
	Offer to change the tire
		You get run over by a car, you lose
		
	You know what, you're tired of this, fireball/smash everyone and walk the rest of the way. 
		The old lady turns into an ogre and tries to kill you.
			Flee into traffic
				The ogre gets run over and killed, you escape
					Call an Uber
						Takes you to city call
					
					Hitch a ride
						Driver is a killer clown, you lose

			Fight
				She proves to much for you, you lose.



"You wake up to your cell phone/'s alarm /'It/'s 6 o/'clock, time to wake up and save the city!/' Ugh, is it Monday already? You vaguely remember setting this alarm Friday afternoon when a Dragon decided to take residence at the top of City Hall. You were going to save the city then, but it was getting late, and you had a standing poker game with some fellow adventurers that night that you/'d already missed 3 weeks running. You couldn/’t make it a month and still save face afterward. Then of course, Saturday you had your appointment with your barber, and cancelling within 24 hours would end up with a $25 fee. You didn/'t think you had that much in your bank account. Sunday was right out because of your bi-annual family reunion which you never missed, because your great-uncle Charlie made the meanest BBQ sauce this side of the Mississippi, but he only brought it out for this event. So you had to push saving the city off till Monday, and honestly, the dragon had only torched a few cars that drove too close and all he'd managed to eat was politicians who were too slow to get out, so really, it wasn/'t so bad. But now people had to go to work downtown, and the dragon might get a little more aggressive with rush hour. You should probably do something about it. What do you do?"

	options: 
		1  if wizard: "Cast Fireball at phone. You/'re a wizard after all, fireball is the answer to everything."
		1 if warrior: "Smash phone with mace" 
		2 "Blearily walk to coffee machine" 
		3 "Honestly, why did you start this adventure in the first place? Quit and come back later (maybe)"


