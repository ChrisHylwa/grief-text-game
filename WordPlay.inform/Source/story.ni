"Tower of Happiness" by Avita, Chris & Steph



Chapter 1 - Set-up

Section 1 - Synonyms

Figure of Acceptance is the file "Beyond Acceptance.jpg". 
Sound of wind is the file "22331__black-boe__wind.ogg".

Include Multiple Sounds by Massimo Stella.
[When play begins: display the Figure of Acceptance; play the Sound of wind in background with loop.]


Help is an action applying to nothing. Understand "help" or "HELP" or "Help"  or "help me" or
"HELP ME" or "Help me" or "I need help" or "call for help" or "Please help me" or "Help I need somebody"
or "Help Not just anybody" or "Help I need someone" as help. 
Carry out help: 
	say "[help][paragraph break]"
	
To say help:
	say "Remember to look at stuff, or move to different rooms using: n, s, e, w".

Understand "look for [something]" as examining.
Understand the command "check" as something new.
Understand the command "check" as "look"

Section 2 - Hidden and untakable Items

A thing can be hidden or revealed. 

A thing can be untakable.

The taking action has an object called previous locale (matched as "from").

Setting action variables for taking: 
	now previous locale is the holder of the noun.
	
Report taking something from the location: 
	say "You pick up [the noun]." instead.
	
Report taking something: 
	say "You take [the noun] from [the previous locale]." instead.

Instead of taking a untakable thing:
		say "Cannot be taken."

To say the thing doesn't exist message:
	say "There is nothing here."
	
Before doing something with a hidden thing:
	say the thing doesn't exist message instead.
	
Before doing something to a hidden thing:
	say the thing doesn't exist message instead.
	
Before doing something when a thing is the second noun and the second noun is hidden:
	say the thing doesn't exist message instead.
	
When play begins:
	repeat with T running through hidden things:
		hide T.
		
To reveal (T - a thing):
	now T is revealed;
	now T is described.
	
To hide (T - a thing):
	now T is hidden;
	now T is undescribed.

Section 3 - Secret Doors!!!

A secret door is a kind of door. A secret door can be revealed or hidden. A secret door is hidden. A secret door is scenery. A secret door is closed.

To say the door doesn't exist message:
	say "There's no door here."
	
Before going through a secret door which is hidden:
	say the door doesn't exist message instead.
	
Before doing something to a secret door which is hidden:
	say the door doesn't exist message instead.
	
Before doing something when a secret door is the second noun and the second noun is hidden:
	say the door doesn't exist message instead.
	
Section 4 - Base Converter (not really)

[Waits for user input, then converts the number to the desired base]
Include Version 5 of Glulx Text Effects by Emily Short.
Input handling rules are an object-based rulebook.

The B-conv is a thing. The printed name  of b-conv is "B-box". Understand "B-box" or "bbox" as B-conv.

Understand the command "type" as something new.
Understand the command "enter" as something new.
Understand "type [text] into/on [a b-conv]" as typing it on. Understand "type [text] on/into [something]" as typing it on. Typing it on is an action applying to one topic and one thing.
Understand "type [text]" as typing it on.

Understand the commands "key" and "input" and "enter" as "type".

Rule for supplying a missing second noun while typing the topic understood on (this is the guess a keyboard while typing rule):
	if the player can see a b-conv:
		now the second noun is b-conv.

Check an actor typing  the topic understood on something which is not a b-conv (this is the reject typing on non-keyboards rule):
	if the actor is the player:
		say "You can't type that." instead;
	rule fails.

Carry out an actor typing the topic understood on a b-conv (this is the default typing rule):
	if the player can see a b-conv:
		abide by the input handling rules for the b-conv. 

The description of the b-conv is
	"You see a screen labeled B-box with a keyboard next to the scratches. Its keyboard only has the alphabet and the digits 0 - 9.
		  The screen pulsates with 'WAITING FOR INPUT'.".

The b-conv has some text called default response. The default response of a b-conv is usually "Incorrect input.".

Table of User Styles (continued)
style name	justification	italic	indentation	first line indentation	font weight	color 
special-style-1	left-justified	false	15	15	bold-weight	"#000000"

A input handling rule for a b-conv:
	let N be indexed text;
	let N be "[the topic understood]";
	if N matches the regular expression "<a-zA-Z0-9>* (<2-9>|<1-2><0-9>|3<0-6>) (<2-9>|<1-2><0-9>|3<0-6>)$":
		let Num be word number 1 in N in upper case;
		let mybase be word number 2 in N;
		let newbase be word number 3 in N; 
		if Num is "O6GOCEEE":
			if mybase is "28":
				if newbase is "31":
					say "The screen whirls for a few seconds, then outputs:[line break]    [special-style-1]       
						     B[line break]     R[line break]     E[line break]     A[line break]     K[line break]     P[line break]     O[line break]     T";
					rule succeeds;
		say "The screen whirls for a few seconds, then outputs a series of digits. You recognize the output as [Num] in base [mybase] converted to base [newbase].";
		rule succeeds;
	otherwise if N matches the regular expression "<a-zA-Z0-9>* (<2-9>|<1-2><0-9>|3<0-6>)$":
		say "Missing Number";
		rule fails;
	otherwise if N matches the regular expression "<a-zA-Z0-9>* (<1-9>|<1-2><0-9>|3<7-9>) (<1-9>|<1-2><0-9>|3<7-9>)$":
		say "Out of Range";
		rule fails;
	say "Incorrect Input";
	rule fails.
	
Chapter 2 - Story 

Section 1 - Denial Door and Puzzle setup

The Denial Room is a room with the printed name "Room". "You are in a room." 

The apple is hidden in the Denial room. 

The pot is untakable and hidden in the Denial room. The pot is a container.

The knife is hidden in the Denial room.

The wall is hidden and untakable in the Denial room.

The painting of Julius Caesar is untakable and hidden in the Denial room.

The oak door is a secret door. The oak door is east of The Denial Room and north of The Anger Room. 

A note is untakable in the Denial room.

A b-conv is untakable and hidden in the Denial room.

Count is a number that varies.

Count is 0.

Instead of examining a note:
	if Count is 0 begin;
		say   "+--------------------------------------+[line break]
			   | Look for painting; Uifsf jt bo boomf. | [line break]
			   |                                                                 | [line break]
			   | _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ | [line break]
			   +--------------------------------------+";
			reveal the painting of Julius Caesar;
			now the description of the painting of Julius Caesar is "A painting of Julius Caesar glares at you. He is crossing the Rubicon to Rome in the West.";
	end if;
	if Count is 1 begin;
		say  "+--------------------------------------+[line break]
			  | Look for painting; Uifsf jt bo boomf. | [line break]
			  |  baiting PantS                                        | [line break]
			  | _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ | [line break]
			 +--------------------------------------+";
	end if;
	if Count is 2 begin;
		say  "+--------------------------------------+[line break]
			  | Look for painting; Uifsf jt bo boomf. | [line break]
			  |  baiting PantS                                        | [line break]
			  |  maKe dOor                                           | [line break]
			 +--------------------------------------+";
	end if.

Rule for printing the locale description of The Denial Room:
	say "" instead.

Instead of eating the apple:
	say "You try to chomp into the apple; the apple bites back and breaks a tooth. Ow.".

After doing something to the painting of Julius Caesar:
	 reveal the apple;
	 reveal the pot;
	now Count is 1.
	
The description of the apple is "There is a juicy red apple shaped as a heart next to a warped pot. You want to take the heart-shaped apple. You trust that there are no worms hidden inside it."
The description of the pot is "There is a pot holding soft and loamy soil blacker than night."

Instead of examining the pot when the knife is revealed:
	if knife is on-stage, say "The silver blade glistens in the bottom of the pot."

Instead of examining the pot when the player has the knife:
	say "The pot is useless."
	
Instead of examining the pot when the wall is revealed:
	say "The pot is useless".
	
Instead of inserting the apple into the pot:
	say "You crush the heart-apple in the pot. Smoke bellows outward, forming a shuddering tree. The wispy tree grows and grows until the air consumes it. You look into the pot, and a knife stares back at you.";
	remove apple from play;
	reveal knife.
	

Stabbing it with is an action applying to two visible things. Understand "stab [something] with [knife]" as stabbing it with. 

Check stabbing something (called the target) with something (called the pigsticker) (this is the you must have a blade to stab rule):
	if the player does not have a knife begin;
		if the knife is hidden, say "You don't have anything physical sharp enough to cut--only your words.";
		stop the action;
	end if.

Check stabbing something (called the target) with something (called the pigsticker) (this is the you can only stab with a blade rule):
	if the second noun is not a knife begin;
		say "You try and try to cut [target], monotoneously stabbing as you forget the world exists. Eventually, like with everything else, you give up.";
		stop the action;
	end if.

Check stabbing something (called the target) with something (called the pigsticker) (this is the you can't stab something with itself rule):
	if the target is the pigsticker begin;
		say "You try to break the blade so that you can break the blade, but you forgot a base case and are now stuck in a loop with no exit.";
		stop the action;
	end if.

Check stabbing something (called the target) with something (called the pigsticker) (this is the harikari rule):
	if the target is the player, say "You can't stab yourself.".

Carry out an actor stabbing something (called the target) with something (this is the standard carry out stabbing rule):
	if the target is a painting begin;
		remove painting from play;
		reveal the wall;
		 say "As you turn towards the painting, you hear a faint whisper, [italic type] Et tu, Brute? [roman type] You realize that what you thought was Caesar is actually a re-animated corpse crossing the river Styx. This strengthens your desire to wield the knife.";
		 say "[line break]You stab the corpse over and over again until its shredded remains scatter on the floor. The frame breaks, dragging the crumbling leftovers down with it. You see a faded patch where the painting once was. Scribbled on the wall is: O6GOCEEE 28 31 in some reddish pigment.";
		now the description of the wall is  "Scribbled on the faded wall is: O6GOCEEE 28 31. [line break]";
		say "[line break]You see a screen labeled B-Box displaying a keyboard next to the embedded scratches. The only keys present are the alphabet and the digits 0 - 9.
		  The screen pulsates with 'WAITING FOR INPUT' at the top.";
		say "[line break]The knife's blade breaks, and disappears among the scraps. The knife now has no purpose.";
		reveal the b-conv;
		remove knife from play;
	end if;
	if the target is not a painting begin;
		say "You try and try to cut [target], monotoneously stabbing as you forget the world exists. Eventually, like with everything else, you give up.";
	end if.
	
Understand the command "break" as something new.
Understand "break [something]" as breaking.
Breaking is an action applying to one visible thing. 

Carry out an actor breaking something (called the target):
		if the target is the player, say "You have no intact pieces of yourself to further break down.";
		if the target is the pot begin;
			say "In the dusty, smoked-strewn room, amidst the broken pieces of a once intact thing, lies the pot's useless corpse. Was that really necessary?";
			remove pot from play;
			now Count is 2;
		end if;
		if the target is not the player begin;
			if the target is not the pot, say "It is unbreakable.";
		end if.
		

Understand the command "make" as something new.
Understand "make [something]" as making.
Making is an action applying to one visible thing. 

After reading a command: 
	if the player is in the Denial room begin;
		if the pot is nowhere and player's command matches the regular expression "(m|M)(a|A)(k|K)(e|E) (d|D)(o|O)(o|O)(r|R)" begin;
			now the oak door is revealed;
			say "[line break] On the blank wall reveals an outline of a door. You press against it and feel it give, despite no hinge showing. You accept the existence of the
                                 door and go through, feeling yourself lifting upwards.";
			move player to Anger room;
		end if;
	end if;


To say help:
	say "Look for a note".

Section 1 - Anger Room

Rrt room is a room with the printed name "Room".  "As you enter the next room, the air waftes with the sickening stench of gore, but you don't see any damage. The walls are
	bleached badly; you can still see the former jarring colors of dark oranges paired with limey greens and violets. The sticky carpet seems like it was once soft. You think that this room may have belonged to a child. You think that you've seen this room before..."
Rrw room is a room with the printed name "Room". "As you enter the next room, the air waftes with the sickening stench of gore, but you don't see any damage. The walls are
	bleached badly; you can still see the former jarring colors of dark oranges paired with limey greens and violets. The sticky carpet seems like it was once soft. You think that this room may have belonged to a child. You think that you've seen this room before..."
Rrq room is a room with the printed name "Room". "As you enter the next room, the air waftes with the sickening stench of gore, but you don't see any damage. The walls are
	bleached badly; you can still see the former jarring colors of dark oranges paired with limey greens and violets. The sticky carpet seems like it was once soft. You think that this room may have belonged to a child. You think that you've seen this room before..."
Rrr room is a room with the printed name "Room". "As you enter the next room, the air waftes with the sickening stench of gore, but you don't see any damage. The walls are
	bleached badly; you can still see the former jarring colors of dark oranges paired with limey greens and violets. The sticky carpet seems like it was once soft. You think that this room may have belonged to a child. You think that you've seen this room before..."

To say help:
	say "Examine everything."
	
rand_num is a number that varies.

A thing can be tranquil or violent

The Anger Room is a room with the printed name "Room[line break]As you enter the next room, you smell blood and taste the gnarling cacaphoney of a broken record. Splashes of dried blood cover the walls; everything in the room is sinking and stained. You see your hands. They are red to your wrists, and you can't remove it. You feel nausceous, and start hyperventilating. You struggle through dark spots and white flashes, eventually renouncing sight altogether. You trip on something squishy. You can't get up, and the squishyness is crawling up your
leg. You wish you had your knife. You hate this. You hate this so much. You hate this enough to grab the thing and squeeze and squeeze until it cracks and you throw it against the bloody wall and walk over to it and stomp it to bits. You notice tiny globs emerging from the carcass and oozing towards you. You run back to the old door and open it, tears blotching your vision.
[paragraph break]".



The anger emotion is hidden and violent in the Anger room.

Every turn: 
	If the player is in the Anger room:
		now rand_num is a random number from 1 to 4;
		if rand_num is 1:
			move the player to Rrq room;
		else if rand_num is 2:
			move the player to the Rrw room;
		else if rand_num is 3:
			move the player to the Rrr room;
		else if rand_num is 4:
			move the player to the Rrt room.

A thing can be examined. 
A thing can be on or off.

The qdoor is hidden in the Rrq room. The printed name of the qdoor is "random door". 
The wdoor is hidden in the Rrw room. The printed name of the wdoor is "random door".
The rdoor is  hidden in the Rrr room. The printed name of the rdoor is "random door". 
The tdoor is hidden in the Rrt room. The printed name of the tdoor is "random door".

Understand "random door" as qdoor or wdoor or rdoor or tdoor.
Understand "stuffed animal" or "stuffed bear" or "bear" or "animal" as qstuffed animal or rstuffed animal or tstuffed animal or wstuffed animal.
Understand "sailboat" or "sail" or "boat" as qsailboat or rsailboat or tsailboat or wsailboat.
Understand "photographs" or "photo" or "photograph" or "image" or "photos" or "images" as qphotographs or rphotographs or tphotographs or wphotographs.
Understand "switch" or "hidden switch" as qswitch or rswitch or tswitch or wswitch.

The qstuffed animal is untakable and not examined in the Rrq room.  The printed name of the qstuffed animal is "stuffed bear".
The qphotographs are untakable and not examined in the Rrq room.  The printed name of the qphotographs are "photograph".
The qsailboat is untakable and not examined in the Rrq room. The printed name of the qsailboat is "sailboat".
The qswitch is hidden and untakable in the Rrq room. The printed name of the qswitch is "switch". 

The wstuffed animal is untakable and not examined in the Rrw room.  The printed name of the wstuffed animal is "stuffed bear".
wphotographs are untakable and not examined in the Rrw room.  The printed name of the wphotographs are "photograph".
A wsailboat is untakable and not examined in the Rrw room. The printed name of the wsailboat is "sailboat".
A wswitch  is untakable and hidden in the Rrw room. The printed name of the wswitch is "switch". 

The rstuffed animal is untakable and not examined in the Rrr room.  The printed name of the rstuffed animal is "stuffed bear".
rphotographs are untakable and not examined in the Rrr room.  The printed name of the rphotographs are "photograph".
A rsailboat is untakable and not examined in the Rrr room. The printed name of the rsailboat are "sailboat".
A rswitch  is untakable and hidden in the Rrr room. The printed name of the rswitch is "switch". 

The tstuffed animal is untakable and not examined in the Rrt room.  The printed name of the tstuffed animal is "stuffed bear".
tphotographs are untakable and not examined in the Rrt room.  The printed name of the tphotographs are "photograph".
A tsailboat is untakable and not examined in the Rrt room. The printed name of the tsailboat is "sailboat".
A tswitch is untakable and hidden in the Rrt room. The printed name of the tswitch is "switch".


Understand the command "randoor" as something new.
Understand "randoor" as randooring.
Randooring is an action applying to nothing. 

Instead of examining qdoor:
	if player is in Rrq:
		 say "Inscribed on the door is randoor".

Instead of examining wdoor:
	if player is in Rrw:
		say "Inscribed on the door is randoor".

Instead of examining rdoor:
	if player is in Rrr:
		say "Inscribed on the door is randoor".

Instead of examining tdoor:
	if player is in Rrt:
		say "Inscribed on the door is randoor".




Carry out an actor randooring :
	if player is in Rrq:
		if qdoor is revealed:
			now rand_num is a random number from 1 to 4;
			if rand_num is 1:
				move player to Rrw;
			else if rand_num is 2:
				move player to Rrw;
			else if rand_num is 3:
				move player to Rrr;
			else if rand_num is 4:
				move player to Rrt;
	else if player is in Rrw:
		if wdoor is revealed:
			now rand_num is a random number from 1 to 4;
			if rand_num is 1:
				move player to Rrq;
			else if rand_num is 2:
				move player to Rrr;
			else if rand_num is 3:
				move player to Rrr;
			else if rand_num is 4:
				move player to Rrt;
	else if player is in Rrr:
		if rdoor is revealed:
			now rand_num is a random number from 1 to 4;
			if rand_num is 1:
				move player to Rrq;
			else if rand_num is 2:
				move player to Rrw;
			else if rand_num is 3:
				move player to Rrt;
			else if rand_num is 4:
				move player to Rrt;
	else if player is in Rrt:
		if tdoor is revealed:
			now rand_num is a random number from 1 to 4;
			if rand_num is 1:
				move player to Rrq;
			else if rand_num is 2:
				move player to Rrw;
			else if rand_num is 3:
				move player to Rrr;
			else if rand_num is 4:
				move player to Rrq.	
		

Instead of examining a not examined qstuffed animal:
	if player is in Rrq:
		 say "You see a dilapitated stuffed bear. Its white fluffiness is speckled with deep, reddish brown scabs. Its hollow eyes pierce you.
		   [line break]You feel its stare boring a hole through your head. You feel its judgement, but no one belittles you and gets away with it. You steel your
			    fists and bash its head in. [italic type] Crack. [roman type]Your bloodied, gnarled hands ache.";
		now the qstuffed animal  is examined.

Instead of examining a not examined wstuffed animal:
	if player is in Rrw:
		say "You see a dilapitated stuffed bear. As you inch closer to it, the bear's open maw snaps shut. Its hollow eyes follow you throughout the room.";
		say "[line break]Your hand is aching; the pain throbs with every step taken away from the bear. It slowly spreads to your chest as your rage builds. You punch
		       the bear in the jar with your damaged fist---you hear your hand crunch, but can't feel it. You pummel it again and again until you can feel something. The bear is
					   no more.";
		now the wstuffed animal is examined.
	
Instead of examining a not examined rstuffed animal:
	if player is in Rrr:
		say "You see a dead bear. Its red fluffiness is speckled with deep, brownish white scabs. Its hollow eyes follow you throughout the room";
		say "[line break]Your eyes are aching; the pain throbs with every step taken away from the bear. It slowly spreads down your face to your fists as your rage builds. 
						You stab the bear in the chest with your damaged fist---you hear something break, but can't feel it. You pummel it again and again until you can feel something. The heart is saved for last. [italic type] Crunch. Crunch. Crunch. [roman type] Tasty.";
		now the rstuffed animal is examined.

Instead of examining a not examined tstuffed animal:
	if player is in Rrt:
		say "You see a dead bear. As you inch closer to it, the bear's open maw snaps shut. Its hollow eyes pierce you.";
		say "[line break]You feel its stare boring a hole in your empty chest. You don't need this. Your hands, still wet, reach into the Bear and pull its insides out. 
						The eyes are saved for last. [italic type] Crunch. Crunch. Crunch. [roman type] Tasty.";
		now the tstuffed animal  is examined.


Instead of examining an examined qstuffed animal:
	say "You hate this bear.".
Instead of examining an examined wstuffed animal:
	say "You hate this bear.".
Instead of examining an examined rstuffed animal:
	say "You hate this bear.".
Instead of examining an examined tstuffed animal:
	say "You hate this bear.".
	
Instead of examining not examined qphotographs:
	if player is in Rrq:
		 say "You see a man surrounded by bookshelves sitting on a desk with mountains of papers--both coffee stained and gold-trimmed. His insiduous grin mocks
						 your incompetence, yet you still feel respect for him. You want his acknowledgment as much as you want to destroy him. Instead, you take pleasure in ripping
						 his image to shreds." ;
		now the qphotographs are examined.

Instead of examining not examined wphotographs:
	if player is in Rrw:
		say "Your eyes catch the eyes of a woman in pink tones sharpely smiling. Your finger traces the curves of her face, circling around until you land on her head. You
						can now appreciate her temper, and wish you could start over with her again. But she does not deserve that, not any more. You methodically cut her in half.";
		now the wphotographs are examined.

Instead of examining not examined rphotographs:
	if player is in Rrr:
		say "You can almost taste the sweetly baked loaf of bread that you used to have, captured in this photo. But that taste is no longer yours since you've forsaken
		the maker of the loaves. You needed a baseline of self respect that was always diminished in her sickly charming ways. But the bread has no part in her machinations,
		and is left alone.";
		now the rphotographs are examined.
		
Instead of examining not examined tphotographs:
	if player is in Rrt:
		say "A swirl of movement cascades across the picture, like stop motion captured on one still. You love and regret and understand and forgive and still feel anger against fate and the whims of forces you cannot control. The moving body stays silently on the wall, proud in its withering defiance.";
		now the tphotographs are examined.


Instead of examining examined qphotographs:
	if player is in Rrq:
		 say "Scattered shreds of a ruined photograph are stuck to the floor".

Instead of examining examined wphotographs:
	if player is in Rrw:
		say "Scattered shreds of a ruined photograph are stuck to the floor".

Instead of examining examined rphotographs:
	if player is in Rrr:
		say "Your stomach growls as you yearn for the bread.".

Instead of examining examined tphotographs:
	if player is in Rrt:
		say "You can't bear to look away and you can't live with yourself staring at the photo on the wall.".


Instead of examining a not examined qsailboat:
	if player is in Rrq:
		 say "You see a sailboat and reminisce on your dreams of escaping this dreary world.";
		now the qsailboat is examined.

Instead of examining a not examined wsailboat:
	if player is in Rrw:
		 say "You see a sailboat and reminisce on your dreams of escaping this dreary world.";
		now the wsailboat is examined.

Instead of examining a not examined rsailboat:
	if player is in Rrr:
		 say "You see a sailboat and reminisce on your dreams of escaping this dreary world.";
		now the rsailboat is examined.
	
Instead of examining a not examined tsailboat:
	if player is in Rrt:
		 say "You see a sailboat and reminisce on your dreams of escaping this dreary world.";
		now the tsailboat is examined.
		

Instead of examining an examined qsailboat:
	if player is in Rrq:
		 say "On closer examination, you notice that the sailboat is made up of entirely different pieces. You wonder which piece was the original--or if it's even there at all.".

Instead of examining an examined wsailboat:
	if player is in Rrw:
		say "On closer examination, you notice that the sailboat has the scars of spending most of its life inside a bottle. You feel yourself rooting for the little boat.".

Instead of examining an examined rsailboat:
	if player is in Rrr:
		say "The sailboat sails away on the back of festering dreams".

Instead of examining an examined tsailboat:
	if player is in Rrt:
		say "The sailboat sails away on the back of festering dreams".

Every turn: 
	if the qswitch is hidden:
		if the qsailboat is examined:
			if the qphotographs is examined:
				if the qstuffed animal is examined:
					reveal qswitch;
					say "You uncovered a hidden switch and random door!";
					reveal qdoor;
					now the qdoor is undescribed;
					now the qswitch is undescribed;
	if the wswitch is hidden:
		if the wsailboat is examined:
			if the wphotographs is examined:
				if the wstuffed animal is examined:
					reveal wswitch;
					now the wswitch is undescribed;
					say "You uncovered a hidden switch and random door!";
					reveal wdoor;
					now the wdoor is undescribed;
	if the rswitch is hidden:
		if the rsailboat is examined:
			if the rphotographs is examined:
				if the rstuffed animal is examined:
					reveal rswitch;
					now the rswitch is undescribed;
					say "You uncovered a hidden switch and random door!";
					reveal rdoor;
					now the rdoor is undescribed;
	if the tswitch is hidden:
		if the tsailboat is examined:
			if the tphotographs is examined:
				if the tstuffed animal is examined:
					reveal tswitch;
					now the tswitch is undescribed;
					say "You uncovered a hidden switch and random door!";
					reveal tdoor;
					now the tdoor is undescribed.
		

Understand the command "switch" as something new.
Understand "switch [something]" as switching.
Switching is an action applying to one visible thing. 
Understand the command "hit" as something new.
Understand the command "flick" as something new.
Understand the command "flip" as something new.
Understand the commands "flick" and "hit" and "flip" as "switch".

Carry out an actor switching something (called the target):
	if the target is a qswitch:
		if player is in Rrq:
			 say "You flipped the switch";
			if the qswitch is on:
				now the qswitch is off;
			if the qswitch is off:
				now the qswitch is on;
				now the wswitch is on;
				now the tswitch is off;
				now the rswitch is off;	
	if the target is a wswitch:
		if player is in Rrw:
			say "You flipped the switch";
			if the wswitch is on:
				now the wswitch is off;
			if the wswitch is off:			
				now the wswitch is on;
				now the tswitch is off;
				now the qswitch is off;
				now the rswitch is on;
	if the target is a rswitch:
		if player is in Rrr:
			say "You flipped the switch";
			if the rswitch is on:
				now the rswitch is off;
			if the rswitch is off:
				now the wswitch is off;
				now the qswitch  is off;
				now the rswitch  is on;
	if the target is a tswitch:
		if player is in Rrt:
			say "You flipped the switch";
			if the tswitch is on:
				now the tswitch is off;
			if the tswitch is off:
				now the tswitch  is on;
				now the qswitch is on.
		

Instead of examining a qswitch:
	if player is in Rrq:
		if the qswitch is on:
			say "The switch is on";
		if the qswitch is off:
			say "The switch is off".
		
Instead of examining a wswitch:
	if player is in Rrw:
		if the wswitch is on:
			say "The switch is on";
		if the wswitch is off:
			say "The switch is off".

Instead of examining a rswitch:
	if player is in Rrr:
		if the rswitch is on:
			say "The switch is on";
		if the rswitch is off:
			say "The switch is off".

Instead of examining a tswitch:
	if player is in Rrt:
		if the tswitch is on:
			say "The switch is on";
		if the tswitch is off:
			say "The switch is off".

Every turn:
	if the anger is violent:
		if the qswitch is on:
			if the qdoor is revealed:
				if the wswitch is on:
					if the wdoor is revealed:
						if the rswitch is on:
							if the rdoor is revealed:
								if the tswitch is on:
									if the tdoor is revealed:
										say "A door appears in the middle of the room. You open it, and seeing nothing unusual, you step through. But you go nowhere and are still in the room. Frustration builds as you bang your head against the frame. You plead to make the world stop. You close your eyes and fall backwards, giving up. Yet you miss the ground and feel yourself being transported upwards.";
										now the anger is tranquil.
[										move player to the B-Enter room.


Chapter 3 - Bargaining

The B-Enter Room is a room. "As you arrive in the room, you suddenly feel like you've been drenched in water, even though you're completely dry. You shiver a little bit and look around, a rather plain and empty room surrounding you."
The B-Exit Room is a room. "You hesitate before pushing your way into the darkness."
The Red Room is a room.  "A room whose walls are a vivid scarlet. There's a cerulean door to the south, and a gold door to the east."
The Blue Room is a room.  "A room whose walls are a deep cerulean. There's a scarlet door to the north and a jade door to the east." 
The Green Room is a room.  "A room whose walls are a vibrant jade. There's a cerulean door to the west and a gold door to the north."
The Yellow Room is a room.  "A room whose walls are a beautiful shade of gold. There's a jade door to the south, and a scarlet door to the west."
The Mirrored Red Room is a room. "A room whose walls are a faded crimson. There's a cobalt door with cracked paint to the south and a scratched mustard door to the west."
The Mirrored Blue Room is a room.  "A room whose walls are a unsettling cobalt. There's a faded crimson door to the north and a swirling veridian door to the west."
The Mirrored Green Room is a room.  "A room whose walls are a overwhelming veridian. There's a cobalt door with cracked paint to the east, and a scratched mustard door to the north."
The Mirrored Yellow Room is a room.  "A room whose walls are a sickening mustard. There's a faded crimson door to the east, and a swirling veridian door to the south."
The Altar is a room. "A graywashed room whose walls look closer to stone than all the other rooms you've been in. An altar dedicated to no deity consumes the room. A glinting gold ring appears to be the only offering. There are four diamond-shaped impressions in the altar's face." 

Understand the command "pray" as something new.
Understand "pray" as praying.
Praying is an action applying to nothing.

To say help:
	say "Ask person about something".

Carry out an actor praying:
	say "You pray with all your might and energy, but nothing comes of it.".

The iron door is a secret door. The iron door is north of The Altar and south of the B-Exit Room.

The Red Room is north of the Blue Room and west of the Yellow Room. The Green room is south of the Yellow Room and east of the Blue Room.  The B-Enter Room is west of the Blue Room. The Storeroom is west of the Red Room.

The Mirrored Red Room is north of the Mirrored Blue Room and east of the Mirrored Yellow Room. The Mirrored Green Room is south of the Mirrored Yellow room and west of the Mirrored Blue Room. The Altar is east of the Mirrored Blue Room. The B-Exit Room is north of the iron door.

The mystic mirror is in the Storeroom. "You spot an ornate silver mirror, with a flickering, almost-oval shape. Looking at its surface, you feel like you could vanish into it's steely depths. The handle is peculiar, like an over-sized key."
The bag of rice is in the Mirrored Red Room. "There's a heavy rustic bag with 'RICE' stamped across it, looking lopsided, yet complete in its drudgery."
The bouquet is in the Mirrored Green Room. "On an askew shelf is an enoumously large bouquet of flowers, in an incredibly eye-catching flurry of colors. The scent of the bundle is quite weak, and a bit of dew sparkles on each of the petals."
The teddy bear is in the Mirrored Blue Room. "A soft plush teddy bear missing an eye. You dislike the bear immensly despite the desparate bear's pleas to love it."
The gold ring is in the Altar. "A lovingly crafted gold ring, well-worn yet shiny. Its lived countless seasons of warmth that you never had."
The sapphire shard is in the Mirrored Yellow Room. "A sparkling diamond-shaped blue gemstone shard."
The ruby shard is a thing. "A spikey diamond-shaped red gemstone shard."
The topaz shard is a thing. "A tranquil diamond-shaped yellow gemstone shard."
The emerald shard is a thing. "A blunt diamond-shaped green gemstone shard."

Understand "Mirror" or "mirror" or "MIRROR" or "mystic mirror" or "m mirror" or "Mystic Mirror" or "MYSTIC MIRROR" as mystic mirror.
Understand "Emerald" or "emerald" or "EMERALD" or "emerald shard" or "Emerald Shard" or "Emerald shard" or "emerald Shard" or "EMERALD SHARD" or "green shard" or "Green Shard" or "GREEN SHARD" as Emerald Shard.
Understand "Topaz" or "topaz" or "TOPAZ" or "topaz shard" or "Topaz Shard" or "Topaz shard" or "topaz Shard" or "TOPAZ SHARD" or "yellow shard" or "Yellow shard" or "YELLOW SHARD" as Topaz Shard.
Understand "Sapphire" or "sapphire" or "SAPPHIRE" or "sapphire shard" or "Saphire Shard" or "Sapphire shard" or "SAPPHIRE SHARD" or "blue shard" or "Blue shard" or "BLUE SHARD" as Sapphire Shard.
Understand "Ruby" or "ruby" or "RUBY" or "ruby shard" or "Ruby Shard" or "Ruby shard" or "RUBY SHARD" or "red shard" or "Red shard" or "RED SHARD" as Ruby Shard.
Understand "rice" or "bag of rice" or "rice bag" as Bag of Rice. 
Understand "bear" or "stuffed bear" or "teddy bear" or "teddie bear" or "stuffed animal" or "plush bear" or "plush" as Teddy Bear.
Understand "bouquet" or "flowers" or "bouquet of flowers" or "flower bouquet" as Bouquet.
Understand "ring" or "band" or "gold ring" as Gold Ring.
Understand "wine" or "bottle" or "drink" or "alcohol" as Wine Bottle.
A thing can be solved or unsolved. A puzzle is a kind of thing. A puzzle is unsolved. The gem cypher is a puzzle. The mirror cypher is a puzzle.

Using is an action applying to one visible thing. Understand "use [something]" as using.


[Understand "ask" as "say".]

The blue gem slot is a container in the Altar. The blue gem slot has carrying capacity 1.
The red gem slot is a container in the Altar. The red gem slot has carrying capacity 1.
The green gem slot is a container in the Altar. The green gem slot has carrying capacity 1.
The yellow gem slot is a container in the Altar. The yellow gem slot has carrying capacity 1.
The key slot is a hidden container in the Altar. The key slot has carrying capacity 1. 

Every turn:
	If the blue gem slot contains the sapphire shard and the red gem slot contains the ruby shard and the green gem slot contains the emerald shard and the yellow gem slot contains the topaz shard:
		if the gem cypher is unsolved:
			now the gem cypher is solved;
			reveal key slot;
			say "The shards glow and reveal a large slot on top of the altar. It seems like a large keyhole from here."
			
Every turn:
	If the key slot contains the mystic mirror:
		If the mirror cypher is unsolved:
			now the mirror cypher is solved;
			reveal iron door;
			say "A part of the north wall slides back to reveal an ancient iron slab. There's a broken window in the metal, and only darkness beyond.
				Desireing to remove yourself as far as possibe from these ghosts, you climb through the glass and drag yourself upwards.";
			move player to D-enter room.
			

Instead of examining or using the mirror:
	If the location of the player is:
		-- the Red Room:
			say "You stare into the mirror, entranced by its mezmerizing silvery-red. When you look up again, the room has changed.";
			now the player is in the Mirrored Red Room;
		-- the Blue Room:
			say "You stare into the mirror, hearing the waves of a forgotten coast. When you look up again, the room has changed.";
			now the player is in the Mirrored Blue Room;
		-- the Green Room:
			say "You stare into the mirror, seeing earthy shadows battle for your attention. When you look up again, the room has changed.";
			now the player is in the Mirrored Green Room;
		-- the Yellow Room:
			say "You stare into the mirror, blinded and hurt by its light. When you look up again, the room has changed.";
			now the player is in the Mirrored Yellow Room;
		-- the Mirrored Red Room:
			say "You stare into the mirror, entranced by the flecks of blood appearing on your face. When you look up again, the room has changed.";
			now the player is in the Red Room;
		-- the Mirrored Blue Room:
			say "You stare into the mirror, seeing yourself suffocate. When you look up again, the room has changed.";
			now the player is in the Blue Room;
		-- the Mirrored Green Room:
			say "You stare into the mirror, hearing the wails of the burried dead. When you look up again, the room has changed.";
			now the player is in the Green Room;
		-- the Mirrored Yellow Room:
			say "You stare into the mirror, feeling yourself combust into oblivion. When you look up again, the room has changed.";
			now the player is in the Yellow Room;
		-- otherwise:
			say "You stare into the mirror; the mirror stares back. When you can look away again, you feel a bit light-headed, but otherwise 'fine'.";
			
Instead of showing something to someone, try giving the noun to the second noun.
		
The Author is a person in the Red Room. The Author is carrying the Ruby Shard.  "You recognize the man here as the Author in the photographs. He's more lanky than you remember, wearing an ill-fitting pair of pants and a white button down collared shirt covered in coffee stains. His gaunt face with rough stubble and boodshot eyes haunts your vision. He's stumbling around the room murmuring to himself, searching for nothing."

Before asking the Author about something:
	if the Author does not carry the wine:
		say "The Author's eyes are glazed and don't recognize your existence. He shambles randomly across the room muttering 'i need.. where is is is is i ..want..thirst..empty..so so empty..please..'. His left hand is cut; he grasps something sharp and red in his right hand.";
	else:
		say "The man drowns in alcohol before patronizingly answering you in a suitably drunk and cryptic manner. You realize that he is a shade, an automatron disguised as the person you once knew. His jerkish expressions and overwhelming nonsensical routine make more sense coming from a non-entity. Disappointing, though. You can't get any closure from a metal robot."
		
After asking the Author about "me", say  "They look at you curiously. 'Sorry, I don't know anything about that!'"

Before taking the Ruby Shard:
	if the Author has the Ruby Shard:
		say "As much as you need to take it from this drunkard, you can't untangle his fists. You seem to phase though his body--nothing you do affects the Author. Best to get his attention using other methods."

Instead of giving the Wine bottle to the Author:
	move the Wine Bottle to the Author;
	move the Ruby Shard to the Red Room;
	say "The red gem shard falls to the ground as the Author reaches out and grabs the wine bottle. He takes a long draught before looking up at you. 'Heh. Thanks, sport. Always could count on you. Now then, wadd[']ya want?"

The Beautician is a person in the Green Room. The Beautician is carrying the Emerald Shard. "Your old beautician is standing next to a hair-dressing station, looking dour as usual. She's a world-weary, dangerously thin woman, wielding a pair of blindingly razor sharp scissors. As she hears your footsteps, she smothers a shocked expression before breaking into an almost grin. 'Heh. Never thought I'd see your mug again, not after... You're not forgiven, and as I suspect, neither am I. So leave. We have nothing more to say to each other, not anymore."

After asking the Beautician about "[Emerald Shard]", say "She nods. 'After everything, you still want more from me? Every ounce that is pure and precious for you to crush. No...no i can't, not again. Why are you here? Can't you disappear away as you always do? Leave."

Instead of taking the emerald shard, say "The Beautician snips her scissors menacingly, despite that shakey grin. You know not to try her temper."

After asking the Beautician about "me", say  "They look at you with contempt. 'Get the hell away from me.'"

Instead of giving the Bouquet to the Beautician:
	move the bouquet to the beautician;
	say "'...Fake flowers? What's this supposed to mean? You can't barge in and out of my life like this always with your petty gifts.' She slams the once living flowers you painstakingly collected against the wall; you hear the crunch of dried petals dieing for the last time. She glares at you, 'You have nothing else to give me, do you?";
	if the Beautician does not have the gold ring:
		say "'Can't you ever give me something beautiful instead of the ugliness you carry all the time?'";
	otherwise if the Beautician has the gold ring:
		move the Emerald Shard to the player;
		say "'Since you've given me mother's ring, I'll accept your transgressions and trade you this, for good karma.' As the Beautician drops the scarred green shard into your outstretched palm, her sleeve rides up and you see the wires sustaining her existence. Despite your pain and good sense, you still feel regret that she wasn't really her. "

Instead of giving the gold ring to the Beautician:
	move the gold ring to the beautician;
	say "''Mother's ring!? Where did you...? That's not possible..' You know the ring burned, but you promised to be better in order to see it wielded again. Although she's not the one you requested, the Beautician needs the kindness and heat of the ring more than you do. You delicately place the ring in her hands, as she marvels at you.";
	if the Beautician does not have the bouquet:
		say "'I...I can't believe...' Tears well up in her eyes, yet never fall. She's too distracted to notice any requests. Perhaps she will acknowledge your existence again if you give her something else.";
	otherwise if the Beautician has the bouquet:
		move the Emerald Shard to the player;
		say "The Beautician darkly smiles. 'Of course it's this that carves an inkling of regret and forgiveness in my veins...but I can't, you know that. Let us be done after this.' As the Beautician drops the scarred green shard into your outstretched palm, her sleeve rides up and you see the wires sustaining her existence. Despite your pain and good sense, you still wish desperately that she was really her. "		

The Cook is a person in the Blue Room. The Cook is carrying the wine bottle. "It's the Cook who made the captured bread. A jovial, chubby, woman, wearing an apron and a pristine souz-chef hat. Upon noticing you, she sounds a hearty chuckle. 'Well, hello dear! Fancy seein['] you back after stormin['] off in that dramatic nonsense of yours. Knew you'd be back, though. You always come back to me, don't you dearie? Now come closer, I've just been whippin['] up your favorite dish! Missn['] somethin['] though, can't remember what...always missin['] somethin[']...'[line break]You know better than to trust her fake warmth and can now see her web of manipulations starting to tangle you inwards. You keep your distance; you plead internally to garner the strength to resist."

After asking Cook about "[Wine Bottle]", say "She scoffs at you. 'Is this a bad joke? I know you've seen the gouges on me made from the madness of drink. I'll forgive you
						dearie, but don't make me get out my rollin['] pin! Ah, all those good times with you and that pin. Remember all the fun we had--you eatin['] my muffins and puffs and danishes? Cryin['] out for no more, but of course I knew you could still eat. If only that devilish mongress hadn't stolen you away from me, but I knew you'd come back. Good thin['] she's gone now, isn't dear? Knew she had it comin['] for her--they always do, those ones. Kinda sad, the way she burned, but oh well. What can you do, you know? Good thin['] I ain't afraid of no flame!"
	
Instead of taking the wine bottle, say "Your hand passes though the bottle. You're not corporeal enough to find a grip. You need to leave before the Cook acknowledges you again."

After asking the Cook about "me", say  "Oh dearie, dearie, dearie me! Have you forgotten about yourself again? Come closer, and I'll weave you back together, and we will 	always be together dearie. Always.'[line break]You find yourself, and run."
	
Instead of giving the Bag of Rice to the Cook:
	move the Bag of Rice to the Cook;
	move the Wine Bottle to the player;
	say "As soon as she sees that huge bag of rice, she grins, grabbing it and lifting it off your arms like it weighed absolutely nothing. You now realize she is a spider in human clothing. Her webs are sticking to you. You grab the wine bottle and slice away the slimey strings and chords, like that man did before you. Still feeling her machinations crawl under your skin, you flee.'";
	move player to the Green room.

The Dancer is a person in the Yellow Room. The Dancer is carrying the Topaz Shard.  "You don't recognize the Dancer here, but they still seem familiar, like a child you knew now changed and disillusioned. Yet, they are laughing and spinning away in a pair of old sneakers, defiant in spite of the world and its monsters. Or at least, pretending to escape from it all. A dulled piece of topaz lies on a ripped blanket next to their stereo system."

After asking the Dancer about "[Topaz Shard]", say "They think about it for a moment before answering your question. 'Hmmm... maybe if you find Buster for me, I'll give it to you!' They nod, as if they're agreeing with themselves as they continue dancing to the energetic beat behind them. "

Instead of taking the Topaz Shard, say "You don't even get close to the shard before the Dancer gives you a swift kick, grabbing the gem before you can get to it. 'Hey! It's not nice to try and steal things from people.' They look at you looking almost hurt and pouting a little bit. Looks like taking things by force is not an option here."

After asking the Dancer about "me", say  "They look at you curiously. 'Sorry, I don't know anything about that!'"

Instead of giving the Teddy Bear to the Dancer:
	move the Teddy Bear to the Dancer;
	move the Topaz Shard to the player;
	say "They snatch the bear from your arms, plopping it down next to their stereo system before giving you the shiny yellow gem. 'Thanks!' they sing 'You're a super nice person!'"


Chapter 4 - Depression

D-Enter room is a room. "You enter a room with classy white marble floors, and a tar coating on the walls."

The Aroom is a room. "A room with plain, black walls. [bold type]'(1, 1)'[roman type] is painted on the ceiling in bold white letters."
The Broom is a room. "A room with plain, black walls. [bold type]'(2, 1)'[roman type] is painted on the ceiling in bold white letters."
The Croom is a room. "A room with plain, black walls. [bold type]'(3, 1)'[roman type] is painted on the ceiling in bold white letters."
The Droom is a room. "A room with plain, black walls. [bold type]'(2, 1)'[roman type] is painted on the ceiling in bold white letters."
The Eroom is a room. "A room with plain, black walls. [bold type]'(2, 2)'[roman type] is painted on the ceiling in bold white letters."
The Froom is a room. "A room with plain, black walls. [bold type]'(2, 3)'[roman type] is painted on the ceiling in bold white letters." 
The Groom is a room. "A room with plain, black walls. [bold type]'(3, 1)'[roman type] is painted on the ceiling in bold white letters."
The Hroom is a room. "A room with plain, black walls. [bold type]'(3, 2)'[roman type] is painted on the ceiling in bold white letters."
The Iroom is a room. "A room with plain, black walls. [bold type]'(3, 3)'[roman type] is painted on the ceiling in bold white letters."

The Eroom is north of the Hroom and northeast of the Groom and east of the Droom and southeast of the Aroom and south of the Broom and southwest of the Croom and west of the Froom and northwest of the Iroom.
The Aroom is north of the Droom and west of the Broom. 
The Croom is north of the Froom and east of the Broom.
The Groom is south of the Droom and west of the Hroom.
The Iroom is south of the Froom and east of the Hroom.
The Droom is east of the D-Enter room.

The magic square conundrum is a puzzle. 

The magic square diagram is a thing. The magic square diagram is in the Eroom. The description of the magic square diagram is "The diagram shows a 3x3 grid of squares. The middle square contains the number 5. There are lines across every row, column and diagonal, like an incredibly overcompensating game of tic-tac-toe. Next to the grid, the number 15 is written gigantically, and circled multiple times."

The astronomy table is a thing. The astronomy table is hidden. On the astronomy table there is a model sun, a small model planet, and a giant model planet. The description of the table is "A huge circular table with a starry sky emblazoned on the top surface. There's a small model solar system standing on top, with a sun, a small blue planet and a large massive blue planet. It's not moving at the moment, but judging by the way it's set up, the giant planet is on a collision course with the smaller blue marble."


A block is a kind of thing. A block is pushable between rooms. 
Instead of taking a block, say "Good luck putting that giant cube of granite into your pocket. Try pushing it instead."
Instead of wearing a block, say "Much as you try, you cannot wear the block."

Block A is in Droom. "A large heavy cube with the number 1 engraved on every face." 
Block B is in Iroom.  Block B is fixed in place. "A large heavy cube with the number 2 engraved on every face."  Instead of pushing Block B, say "It doesn't want to be pushed."
Block C is in Froom.  "A large heavy cube with the number 3 engraved on every face."
Block D is in Groom. Block D is fixed in place. "A large heavy cube with the number 4 engraved on every face." Instead of pushing Block D, say "It doesn't want to be pushed."
Block E is in Eroom. Block E is fixed in place. "A large heavy cube with the number 5 engraved on every face." Instead of pushing Block E, say "It doesn't want to be pushed." 
Block F is in Croom. Block F is fixed in place. "A large heavy cube with the number 6 engraved on every face." Instead of pushing Block F, say "It doesn't want to be pushed."
Block G is in Hroom. "A large heavy cube with the number 7 engraved on every face."
Block H is in Aroom. Block H is fixed in place. "A large heavy cube with the number 8 engraved on every face." Instead of pushing Block H, say "It doesn't want to be pushed."
Block I is in Broom. "A large heavy cube with the number 9 engraved on every face."

Every turn:
	if Block A is in Broom and Block C is in Droom and Block G is in Froom and Block I is in Hroom:
		if the magic square conundrum is unsolved:
			now the magic square conundrum is solved;
			remove Block E from play;
			reveal astronomy table;
			say "As the last block slides into place, you hear a low rumble coming from the center of the grid."



Section 5 - Acceptance

The Tower  is a room. "The walls of the tower seem to be made of gray stone, at least from down here. There's a long spiral staircase that leads up so far. A ray of white light shines down into the center of the room from the roof. Floating yellow globes hover above the staircase bannister, leading the way up to the top."   

The Staircase is a room. "The stairs dissappear behind you. The walls are getting brighter. Keep climbing."

The Upper Landing is a room. "The light is white, warm. There's a hole in the roof here to let the light in, with a ladder leading upwards."

The End is a room. "Welcome back.[paragraph break]THE END." 

Credits is a room. "Thank you for playing!"

The Staircase is above The Tower. Below The Staircase is nowhere. 
The Upper Landing is above The Staircase. Below the Upper Landing is nowhere.
The End is above the Upper Landing. Below the Upper Landing is nowhere. Below The End is nowhere.
]
The story headline is "An Interactive Fiction".
The story genre is "Puzzle". 
The story creation year is 2016. 

Release along with website, the introductory booklet, a file of "Beyond Acceptance image" called "Beyond Acceptance.jpg" and a file of "Wind sounds" called "22331__black-boe__wind.ogg", and cover art .

test me with "look note / check picture / take apple / put apple in pot / take knife / stab caesar / input o6goceee 28 31 / break pot / make door".