"Room Wodplay or Surrealist project" by Avita, Chris & Steph

[Include Basic Help Menu by Emily Short.]

[Include Secret Doors by Andrew Owen.]

[Include Hidden Items by Krister Fundin.]



Chapter 1 - Set-up

Section 1 

Help is an action applying to nothing. Understand "help" or "HELP" or "Help"  or "help me" or
"HELP ME" or "Help me" as help. 
Carry out help: 
	say "[help][paragraph break]"
	
To say help:
	say "You can Interact or Examine name of object".

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
	now T is revealed
	
To hide (T - a thing):
	now T is hidden

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



After doing something to the painting of Julius Caesar:
	 reveal the apple;
	 reveal the pot;
	now Count is 1.
	
The description of the apple is "There is a juicy red apple next to a pot. You want to take the apple."
The description of the pot is "There is a pot holding soft and loamy soil."

Instead of examining the pot when the knife is revealed:
	if knife is on-stage, say "The blade glistens in the bottom of the pot ."

Instead of examining the pot when the player has the knife:
	say "The pot is useless."
	
Instead of examining the pot when the wall is revealed:
	say "The pot is useless".
	
Instead of inserting the apple into the pot:
	say "You put the apple in the pot. Smoke bellows outward, forming a tree. The wispy tree grows and grows until the air consumes it. You look into the pot, and a knife stares back at you.";
	remove apple from play;
	reveal knife.
	

Stabbing it with is an action applying to two visible things. Understand "stab [something] with [knife]" as stabbing it with. 

Check stabbing something (called the target) with something (called the pigsticker) (this is the you must have a blade to stab rule):
	if the player does not have a knife begin;
		if the knife is hidden, say "You need a bladed weapon to stab anything.";
		stop the action;
	end if.

Check stabbing something (called the target) with something (called the pigsticker) (this is the you can only stab with a blade rule):
	if the second noun is not a knife begin;
		say "And I suppose you cut your meat with a spoon? Why not try something with a blade?";
		stop the action;
	end if.

Check stabbing something (called the target) with something (called the pigsticker) (this is the you can't stab something with itself rule):
	if the target is the pigsticker begin;
		say "You try to break the blade so that. . . Wait, you can't stab [the pigsticker] with itself!";
		stop the action;
	end if.

Check stabbing something (called the target) with something (called the pigsticker) (this is the harikari rule):
	if the target is the player, say "You can't stab yourself.".

Carry out an actor stabbing something (called the target) with something (this is the standard carry out stabbing rule):
	if the target is a painting begin;
		remove painting from play;
		reveal the wall;
		 say " You hear a faint whisper, [italic type] Et tu, Brute? [roman type]";
		 say "[line break]You stabbed the painting over and over again until the shredded remains of *INSERT* scatter on the floor. The frame breaks, dragging the crumbling leftovers down with it. You see a faded patch where the painting once was. Scribbled on the wall is: O6GOCEEE in 28 to 31";
		now the description of the wall is  "Scribbled on the faded wall is: O6GOCEEE in 28 to 31. [line break]";
		 say "[line break]The knife's blade breaks, and disappears among the scraps. The knife now has no purpose.";
		 remove knife from play;
	end if;
	if the target is not a painting begin;
		if the target is not a person,
			say "Unintuitively, stabbing did nothing.";
	end if.
	
Understand the command "break" as something new.
Understand "break [something]" as breaking.
Breaking is an action applying to one visible thing. 

Carry out an actor breaking something (called the target):
		if the target is the player, say "You can't break yourself here";
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
		if the pot is nowhere and player's command matches the regular expression "make door" begin;
			now the oak door is revealed;
			say "[line break]An old, oak door materializes before you. You go through the door.";
			move player to Anger room;
		end if;
	end if;


To say help:
	say "Look for a note".

Section 1 - Anger Room

Rrt room is a room with the printed name "Room".  "As you enter the next room, you smell blood and taste the gnarling cacaphoney of a broken record. Splashes of dried blood cover the walls; everything in the room is sinking and stained."
Rrt room is south of Anger room.
Rrw room is a room with the printed name "Room". "As you enter the next room, you smell blood and taste the gnarling cacaphoney of a broken record. Splashes of dried blood cover the walls; everything in the room is sinking and stained."
Rrw room is east of Rrq room.
Rrq room is a room with the printed name "Room". "As you enter the next room, you smell blood and taste the gnarling cacaphoney of a broken record. Splashes of dried blood cover the walls; everything in the room is sinking and stained."
Rrq  room is south of Rrt room.
Rrr room is a room with the printed name "Room". "As you enter the next room, you smell blood and taste the gnarling cacaphoney of a broken record. Splashes of dried blood cover the walls; everything in the room is sinking and stained."
Rrr room is south of Rrq room.


The Anger Room is a room with the printed name "As you enter the next room, you smell blood and taste the gnarling cacaphoney of a broken record. Splashes of dried blood cover the walls; everything in the room is sinking and stained. You see your hands. They are red to your wrists, and you can't remove it. You feel nausceous, and start hyperventilating. You struggle through dark spots and white flashes, eventually renouncing sight altogether. You trip on something squishy. You can't get up, and the squishyness is crawling up your
leg. You wish you had your knife. You hate this. You hate this so much. You hate this enough to grab the thing and squeeze and squeeze until it cracks and you throw it against the bloody wall and walk over to it and stomp it to bits. You notice tiny globs emerging from the carcass and oozing towards you. You run back to the old door and open it.
[paragraph break]".

Every turn: 
	If the player is in the Anger room, move player to Rrq room.

A thing can be examined. 
A thing can be on or off.

The qdoor is hidden in the Rrq room. The printed name of the qdoor is "random door".  It is undescribed.
The wdoor is hidden in the Rrw room. The printed name of the wdoor is "random door". It is undescribed.
The rdoor is  hidden in the Rrr room. The printed name of the rdoor is "random door". It is undescribed.
The tdoor is hidden in the Rrt room. The printed name of the tdoor is "random door". It is undescribed.


Understand "random door" as qdoor or wdoor or rdoor or tdoor.
Understand "stuffed animal" or "stuffed bear" as qstuffed animal or rstuffed animal or tstuffed animal or wstuffed animal.
Understand "sailboat" as qsailboat or rsailboat or tsailboat or wsailboat.
Understand "photographs" as qphotographs or rphotographs or tphotographs or wphotographs.
Understand "switch" as qswitch or rswitch or tswitch or wswitch.

The qstuffed animal is a thing which is not examined in the Rrq room.  The printed name of the qstuffed animal is "stuffed bear".
qphotographs are things which are not examined in the Rrq room.  The printed name of the qphotographs are "photographs".
A qsailboat is a thing which is not examined in the Rrq room. The printed name of the qsailboat is "sailboat".
A qswitch is hidden in the Rrq room. The printed name of the qswitch is "switch". It is undescribed.

The wstuffed animal is not examined in the Rrw room.  The printed name of the wstuffed animal is "stuffed bear".
wphotographs are not examined in the Rrw room.  The printed name of the wphotographs are "photographs".
A wsailboat is not examined in the Rrw room. The printed name of the wsailboat is "sailboat".
A wswitch  is hidden in the Rrw room. The printed name of the wswitch is "switch". It is undescribed.

The rstuffed animal is not examined in the Rrr room.  The printed name of the rstuffed animal is "stuffed bear".
rphotographs are not examined in the Rrr room.  The printed name of the rphotographs are "photographs".
A rsailboat is not examined in the Rrr room. The printed name of the rsailboat are "sailboat".
A rswitch  is hidden in the Rrr room. The printed name of the rswitch is "switch". It is undescribed.

The tstuffed animal is not examined in the Rrt room.  The printed name of the tstuffed animal is "stuffed bear".
tphotographs are not examined in the Rrt room.  The printed name of the tphotographs are "photographs".
A tsailboat is not examined in the Rrt room. The printed name of the tsailboat is "sailboat".
A tswitch is hidden in the Rrt room. The printed name of the tswitch is "switch". It is undescribed.


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
		say "Inscribd on the door is randoor".



rand_num is a number that varies.
Carry out an actor randooring :
	if qdoor is revealed:
		if player is in Rrq:
			now rand_num is a random number from 1 to 4;
			if rand_num is 1:
				move player to Rrq;
			else if rand_num is 2:
				move player to Rrw;
			else if rand_num is 3:
				move player to Rrr;
			else if rand_num is 4:
				move player to Rrt;
	else if wdoor is revealed:
		if player is in Rrw:
			now rand_num is a random number from 1 to 4;
			if rand_num is 1:
				move player to Rrq;
			else if rand_num is 2:
				move player to Rrw;
			else if rand_num is 3:
				move player to Rrr;
			else if rand_num is 4:
				move player to Rrt;
	else if rdoor is revealed:
		if player is in Rrr:
			now rand_num is a random number from 1 to 4;
			if rand_num is 1:
				move player to Rrq;
			else if rand_num is 2:
				move player to Rrw;
			else if rand_num is 3:
				move player to Rrr;
			else if rand_num is 4:
				move player to Rrt;
	else if tdoor is revealed:
		if player is in Rrt:
			now rand_num is a random number from 1 to 4;
			if rand_num is 1:
				move player to Rrq;
			else if rand_num is 2:
				move player to Rrw;
			else if rand_num is 3:
				move player to Rrr;
			else if rand_num is 4:
				move player to Rrt.	
		

Instead of examining a not examined qstuffed animal:
	if player is in Rrq:
		 say "You see a dilapitated stuffed bear. Its white fluffiness is speckled with deep, reddish brown scabs. Its hollow eyes pierce you.
		   [line break]You feel its stare boring a hole through your head. You feel its judgement, but no one belittles you and gets away with it. You steel your
			    fists and bash its head in. [italic type] Crunch. Crunch. Crunch. [roman type]Your bloodied, gnarled hands ache.";
		now the qstuffed animal  is examined.

Instead of examining a not examined wstuffed animal:
	if player is in Rrw:
		say "You see a dilapitated stuffed bear. As you inch closer to it, the bear's open maw snaps shut. Its hollow eyes follow you throughout the room.";
		say "[line break]Your hand is aching; the pain throbs with every step taken away from the bear. It slowly spreads to your chest as your rage builds. You punch
		       the bear in the jar with your damaged fist---you hear the crunch, but can't feel it. You pummel it again and again until you can feel something. The bear is
                       no more.";
		now the wstuffed animal is examined.
	
Instead of examining a not examined rstuffed animal:
	if player is in Rrr:
		say "You see a dead bear. Its red fluffiness is speckled with deep, brownish white scabs. Its hollow eyes follow you throughout the room";
		say "[line break]Your eyes are aching; the pain throbs with every step taken away from the bear. It slowly spreads down your face to your fists as your rage builds. 
                        You punch the bear in the jar with your damaged fist---you hear something break, but can't feel it. You pummel it again and again until you can feel something.
                        The eyes are saved for last. [italic type] Crunch. Crunch. Crunch. [roman type] Tasty.";
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
		say "A swirl of movement cascades across the picture, like stop motioned captured on one still. You love and regret and understand and forgive and still feel anger against fate and the whims of forces you cannot control. The moving image stays silently on the wall, proud in its withering defiance.";
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
		 say "You see a sailboat and are reminded of your dreams of escaping this dreary world.";
		now the qsailboat is examined.

Instead of examining a not examined wsailboat:
	if player is in Rrw:
		 say "You see a sailboat and are reminded of your dreams of escaping this dreary world.";
		now the wsailboat is examined.

Instead of examining a not examined rsailboat:
	if player is in Rrr:
		 say "You see a sailboat and are reminded of your dreams of escaping this dreary world.";
		now the rsailboat is examined.
	
Instead of examining a not examined tsailboat:
	if player is in Rrt:
		 say "You see a sailboat and are reminded of your dreams of escaping this dreary world.";
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
	else if the wswitch is hidden:
		if the wsailboat is examined:
			if the wphotographs is examined:
				if the wstuffed animal is examined:
					reveal wswitch;
					say "You uncovered a hidden switch and random door!";
					reveal wdoor;
	else if the rswitch is hidden:
		if the rsailboat is examined:
			if the rphotographs is examined:
				if the rstuffed animal is examined:
					reveal rswitch;
					say "You uncovered a hidden switch and random door!";
					reveal rdoor;
	else if the tswitch is hidden:
		if the tsailboat is examined:
			if the tphotographs is examined:
				if the tstuffed animal is examined:
					reveal tswitch;
					say "You uncovered a hidden switch and random door!";
					reveal tdoor.
		
		
Instead of examining a qswitch:
	if player is in Rrq:
		 say "You flipped the switch on";
		now the qswitch is on;
		now the wswitch is on;
		now the tswitch is off;
		now the rswitch is off.
		
Instead of examining a wswitch:
	if player is in Rrw:
		say "You flipped the switch on";
		now the wswitch is on;
		now the tswitch is off;
		now the rswitch is on.

Instead of examining a rswitch:
	if player is in Rrr:
		say "You flipped the switch on";
		now the wswitch is off;
		now the tswitch  is off;
		now the rswitch  is on.

Instead of examining a tswitch:
	if player is in Rrt:
		say "You flipped the switch on";
		now the tswitch  is on;
		now the qswitch is on.

Every turn:
	if the qswitch is on:
		if the wswitch is on:
			if the rswitch is on:
				if the tswitch is on:
					say "A door appears in the middle of the room. You open it, and seeing nothing unusual, you step through.".


Section 3 - Bargaining

The B-Enter Room is a room. "As you arrive in the room, you suddenly feel like you've been drenched in water, even though you're completely dry. You shiver a little bit and look around, a rather plain and empty room surrounding you."
The B-Exit Room is a room. "You hesitate before pushing your way into the darkness."
The Red Room is a room.  "A room whose walls are a vivid scarlet. There's a blue door to the south, and a yellow door to the east."
The Blue Room is a room.  "A room whose walls are a deep cerulean. There's a red door to the north and a green door to the east." 
The Green Room is a room.  "A room whose walls are a vibrant jade. There's a blue door to the west and a yellow door to the north."
The Yellow Room is a room.  "A room whose walls are a beautiful shade of gold. There's a green door to the south, and a red door to the west."
The Mirrored Red Room is a room. "A room whose walls are a faded crimson. There's a blue door with cracked paint to the south and a scratched yellow door to the west."
The Mirrored Blue Room is a room.  "A room whose walls are a unsettling cobalt. There's a faded red door to the north and a swirling green door to the west."
The Mirrored Green Room is a room.  "A room whose walls are a overwhelming veridian. There's a blue door with cracked paint to the east, and a scratched yellow door to the north."
The Mirrored Yellow Room is a room.  "A room whose walls are a sickening mustard. There's a faded red door to the east, and a swirling green door to the south."
The Altar is a room. "A gray room whose walls look closer to stone than all the other rooms you've been in. There's an altar here with a glinting gold ring resting on top of it. There appear to be four diamond-shaped impressions in the altars face." 

The iron door is a secret door. The iron door is north of The Altar and south of the B-Exit Room.

The Red Room is north of the Blue Room and west of the Yellow Room. The Green room is south of the Yellow Room and east of the Blue Room.  The B-Enter Room is west of the Blue Room. The Storeroom is west of the Red Room.

The Mirrored Red Room is north of the Mirrored Blue Room and east of the Mirrored Yellow Room. The Mirrored Green Room is south of the Mirrored Yellow room and west of the Mirrored Blue Room. The Altar is east of the Mirrored Blue Room. The B-Exit Room is north of the iron door.

The mystic mirror is in the Storeroom. "You spot an ornate silver mirror, with a strange, not-quite oval shape. Looking at its surface, you almost feel like you could fall into it's silvery depths. The handle looks strange, almost like an over-sized key."
The bag of rice is in the Mirrored Red Room. "There's a large brown bag with the word 'RICE' stamped across it sits, looking a bit lopsided, but otherwise complete."
The bouquet is in the Mirrored Green Room. "On a slightly askew shelf is a  large bouquet of various flowers, an incredibly eye-catching flurry of colors. Despite the number of flowers, the scent of the bundle is actually quite weak. A bit of dew sparkles on each of the petals."
The teddy bear is in the Mirrored Blue Room. "A beautiful soft push teddy bear."
The gold ring is in the Altar. "A lovingly crafted gold ring that's truely beautiful."
The sapphire shard is in the Mirrored Yellow Room. "A gorgeous diamond-shaped blue gemstone shard."
The ruby shard is a thing. "A gorgeous diamond-shaped red gemstone shard."
The topaz shard is a thing. "A gorgeous diamond-shaped yellow gemstone shard."
The emerald shard is a thing. "A gorgeous diamond-shaped green gemstone shard."

Understand "Mirror" or "mirror" or "MIRROR" or "mystic mirror" or "m mirror" or "Mystic Mirror" or "MYSTIC MIRROR" as mystic mirror.
Understand "Emerald" or "emerald" or "EMERALD" or "emerald shard" or "Emerald Shard" or "Emerald shard" or "emerald Shard" or "EMERALD SHARD" or "green shard" or "Green Shard" or "GREEN SHARD" as Emerald Shard.
Understand "Topaz" or "topaz" or "TOPAZ" or "topaz shard" or "Topaz Shard" or "Topaz shard" or "topaz Shard" or "TOPAZ SHARD" or "yellow shard" or "Yellow shard" or "YELLOW SHARD" as Topaz Shard.
Understand "Sapphire" or "sapphire" or "SAPPHIRE" or "sapphire shard" or "Saphire Shard" or "Sapphire shard" or "SAPPHIRE SHARD" or "blue shard" or "Blue shard" or "BLUE SHARD" as Sapphire Shard.
Understand "Ruby" or "ruby" or "RUBY" or "ruby shard" or "Ruby Shard" or "Ruby shard" or "RUBY SHARD" or "red shard" or "Red shard" or "RED SHARD" as Ruby Shard.
Understand "rice" or "bag of rice" or "rice bag" as Bag of Rice. 
Understand "bear" or "stuffed bear" or "teddy bear" or "teddie bear" or "stuffed animal" or "plush bear" or "plush" as Teddy Bear.
Understand "bouquet" or "flowers" or "bouquet of flowers" or "flower bouquet" as Bouquet.
Understand "ring" or "band" or "gold ring" as Gold Ring.

A thing can be solved or unsolved. A puzzle is a kind of thing. A puzzle is unsolved. The gem cypher is a puzzle. The mirror cypher is a puzzle.

Using is an action applying to one visible thing. Understand "use [something]" as using.

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
			say "The shards glow and reveal a large slot in the top of the altar. It almost looks like a large keyhole from here."
			
Every turn:
	If the key slot contains the mystic mirror:
		If the mirror cypher is unsolved:
			now the mirror cypher is solved;
			reveal iron door;
			say "A part of the north wall slides back to reveal an ancient iron door. There's a broken window in the iron portal, and only darkness beyond."
			

Instead of examining or using the mirror:
	If the location of the player is:
		-- the Red Room:
			say "You stare into the mirror, entranced by its deep silver surface. When you look up again, the room has changed.";
			now the player is in the Mirrored Red Room;
		-- the Blue Room:
			say "You stare into the mirror, entranced by its deep silver surface. When you look up again, the room has changed.";
			now the player is in the Mirrored Blue Room;
		-- the Green Room:
			say "You stare into the mirror, entranced by its deep silver surface. When you look up again, the room has changed.";
			now the player is in the Mirrored Green Room;
		-- the Yellow Room:
			say "You stare into the mirror, entranced by its deep silver surface. When you look up again, the room has changed.";
			now the player is in the Mirrored Yellow Room;
		-- the Mirrored Red Room:
			say "You stare into the mirror, entranced by its deep silver surface. When you look up again, the room has changed.";
			now the player is in the Red Room;
		-- the Mirrored Blue Room:
			say "You stare into the mirror, entranced by its deep silver surface. When you look up again, the room has changed.";
			now the player is in the Blue Room;
		-- the Mirrored Green Room:
			say "You stare into the mirror, entranced by its deep silver surface. When you look up again, the room has changed.";
			now the player is in the Green Room;
		-- the Mirrored Yellow Room:
			say "You stare into the mirror, entranced by its deep silver surface. When you look up again, the room has changed.";
			now the player is in the Yellow Room;
		-- otherwise:
			say "You stare into the mirror for quite some time. When you look up, you feel a bit light-headed, but otherwise fine.";
			
Instead of showing something to someone, try giving the noun to the second noun.
		
The Author is a person in the Red Room. The Author is carrying the Ruby Shard.  "You recognize the man here as an Author you once knew. His name escapes you now though.  He's lanky, and wearing an ill-fitting pair of pants and a white button down shirt covered in coffee stains. His gaunt face with rough stubble and boodshot eyes haunts your vision. He's stumbling around the room, searching for something."

Before asking the Author about something:
	if the Author does not carry the wine:
		say "The Author doesn't seem to notice you. 'Where did I put the bottle?' he mutters to himself. In his left hand, he holds a something shiny and red.";
	else:
		say "The man grins and takes a swig of his alcohol before answering your question in a suitably drunk and cryptic manner."
		
After asking the Author about "me", say  "They look at you curiously. 'Sorry, I don't know anything about that!'"

Before taking the Ruby Shard:
	if the Author has the Ruby Shard:
		say "Much as you would want to take it from this drunkard, it seems he's holding onto it tightly. Not only that, but his movements are so erratic, you can't even get close to him without risking a punch in the gut. Best to get his attention first."

Instead of giving the Wine bottle to the Author:
	move the Wine Bottle to the Author;
	move the Ruby Shard to the Red Room;
	say "The red gem shard falls to the ground as the Author reaches out and grabs the wine bottle. He takes a long draught before looking up at you. 'Heh. Thanks, sport. Always could count on you. Now then, wadd[']ya want?"

The Beautician is a person in the Green Room. The Beautician is carrying the Emerald Shard. "Your old beautician is standing next to a hair-dressing station, looking dour as usual. She's a world-weary, dangerously thin woman, wielding a pair of blindingly sharp scissors. As she hears your footsteps, she gives you a once over before breaking into a wide grin. 'Howdy! Been a long time since you've come around here!'"

After asking the Beautician about "[Emerald Shard]", say "She nods. 'Well, I got it right here! [']S a pretty thing though. [']tell ya what! You find me something that's just as pretty as that, and something I can display in my shop, and I'll hand it right over!' She gives you another one of her winning smiles.'"

Instead of taking the emerald shard, say "The Beautician snips her scissors slightly menacingly, despite that wide grin. You figure it would be best not to try her temper."

After asking the Beautician about "me", say  "They look at you curiously. 'Sorry, I don't know anything about that!'"

Instead of giving the Bouquet to the Beautician:
	move the bouquet to the beautician;
	say "'Thanks! This ought to spruce up my shop nicely.'";
	if the Beautician does not have the gold ring:
		say "'Now just find me something truely beautiful, and this shard is yours!'";
	otherwise if the Beautician has the gold ring:
		move the Emerald Shard to the player;
		say "'Well, that's everything I need. Take the shard, just like I promised. Thanks a bunch, hon!'"

Instead of giving the gold ring to the Beautician:
	move the gold ring to the beautician;
	say "''Thanks! This ring is gorgeous!'";
	if the Beautician does not have the bouquet:
		say "'Now just find me something to spruce up my shop, and this shard is yours!'";
	otherwise if the Beautician has the bouquet:
		move the Emerald Shard to the player;
		say "'Well, that's everything I need. Take the shard, just like I promised. Thanks a bunch, hon!'"		

The Cook is a person in the Blue Room. The Cook is carrying the wine bottle. "It's the Cook! A jovial, chubby, woman, wearing an apron and a pristine souz-chef hat. Upon noticing you, she sounds a hearty chuckle! 'Well hello! What can I get you tonight?'"

After asking Cook about "[Wine Bottle]", say "She shakes her head. 'Nu-uh. Not today! I need that for later. But if you want me to pull out another bottle, maybe you can help me out by getting some rice for sushi night?' She grins. 'Gotta call in a favor from you every once in a while.'"
	
Instead of taking the wine bottle, say "The Cook catches your hand with a smirk. 'Sorry, but I really need this bottle. I can get you a different bottle if you help me out though."

After asking the Cook about "me", say  "They look at you curiously. 'Sorry, I don't know anything about that!'"
	
Instead of giving the Bag of Rice to the Cook:
	move the Bag of Rice to the Cook;
	move the Wine Bottle to the player;
	say "As soon as she sees that huge bag of rice, she gins, grabbing it and lifting it off your arms like it weighed absolutely nothing. She sets it down next to the counter. 'Well, that's your end of the bargain! Now for mine!' She dissappears into thin air, only to reappear a few seconds later holding a large bottle of wine. She hands it to you carefully. 'Be careful with that stuff. It's super potent.'"

The Dancer is a person in the Yellow Room. The Dancer is carrying the Topaz Shard.  "You don't recognize the Dancer here, but they still seem familiar. They're young, and of ambiguous gender, grinning as they dance about in a pair of sneakers. A large shard of yellow topaz lies on the blanket next to their stereo system."

After asking the Dancer about "[Topaz Shard]", say "They think about it for a moment before answering your question. 'Hmmm... maybe if you find Buster for me, I'll give it to you!' They nod, as if they're agreeing with themselves as they continue dancing to the energetic beat behind them. "

Instead of taking the Topaz Shard, say "You don't even get close to the shard before the Dancer gives you a swift kick, grabbing the gem before you can get to it. 'Hey! It's not nice to try and steal things from people.' They look at you looking almost hurt and pouting a little bit. Looks like taking things by force is not an option here."

After asking the Dancer about "me", say  "They look at you curiously. 'Sorry, I don't know anything about that!'"

Instead of giving the Teddy Bear to the Dancer:
	move the Teddy Bear to the Dancer;
	move the Topaz Shard to the player;
	say "They snatch the bear from your arms, plopping it down next to their stereo system before giving you the shiny yellow gem. 'Thanks!' they sing 'You're a super nice person!'"


Section 4 - Depression

D-Enter room is a room. "The entrance to depression."

The Eroom is north of the Hroom and northeast of the Groom and east of the Droom and southeast of the Aroom and south of the Broom and southwest of the Croom and west of the Froom and northwest of the Iroom.
The Aroom is north of the Droom and west of the Broom. 
The Croom is north of the Froom and east of the Broom.
The Groom is south of the Droom and west of the Hroom.
The Iroom is south of the Froom and east of the Hroom.
The Droom is east of the D-Enter room.

A block is a kind of thing. A block is pushable between rooms. 
Instead of taking a block, say "Good luck putting that giant cube of rock into your pocket. Maybe try pushing it instead."
Instead of wearing a block, say "Much as you try,  cannot wear the block."

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
	If Block A is in Broom:
		If Block C is in Droom:
			If Block G is in Froom:
				If Block I is in Hroom:
					say "DING".


Section 5 - Acceptance

The Tower  is a room. "The walls of the tower seem to be made of gray stone, at least from down here. There's a long spiral staircase that leads up so far. A ray of white light shines down into the center of the room from the roof. Floating yellow globes hover above the staircase bannister, leading the way up to the top."   

The Staircase is a room. "The stairs dissappear behind you. The walls are getting brighter. Keep climbing."

The Upper Landing is a room. "The light is white, warm. There's a hole in the roof here to let the light in, with a ladder leading upwards."

The End is a room. "Welcome back.[paragraph break]THE END."

Credits is a room. "Thank you for playing!"

The Staircase is above The Tower. Below The Staircase is nowhere. 
The Upper Landing is above The Staircase. Below the Upper Landing is nowhere.
The End is above the Upper Landing. Below the Upper Landing is nowhere. Below The End is nowhere.
