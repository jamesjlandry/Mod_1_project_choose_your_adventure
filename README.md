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
