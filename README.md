# **FARKLE**

## **Problem Statement**

---

> The program creates a multiplayer farkle game in which players roll six dice repeatedly until a victor is determined. The user is prompted by the program to enter the player count. Each player takes a turn rolling their dice and putting any point dice aside. Dice that have a face value of 1, 5, or three dice of a kind are considered point dice. If you roll a 1, you get 100 points, and if you roll a 5, you get 50 points. If you roll three identical dice, the result is 100 times the face value. The winner is the player with 10,000 or more points.

---

## **Overall Process**

---

## **Program Pseudocode**

> DISPLAY introductory message
>
> READ the game rules from game_rules.txt file
>
> DISPLAY the game rules
>
> INIT an unsigned integer, numPlayers
>
> GET the number of players from the user
>
> SET numPlayers to the number entered
>
> WHILE numPlayers is less than 2
>
> > DISPLAY error message
>
> > GET the number of players from the user
>
> > SET numPlayers to the number entered
>
> ENDWHILE

> INIT a boolean variable, game_over
>
> SET game_over to false
>
> INIT a vector of Player objects, players, with size numPlayers
>
> WHILE game_over is false
>
> >     FOR each player in players vector
>
> > > >     	INIT an unsigned integer, round_score
>
> > > >     	SET round_score to 0
>
> > > > IF the player’s score is 10000 or more THEN
>
> > > > > >     		SET game_over to true
>
> > > > > >     		EXITWHILE
>
> > > >     	ELSE
>
> > > > > >     		INIT an unsigned integer, numRolls to 6
>
> > > > > >     		INIT a vector of integers, point_dice
>
> > > > > >     		WHILE numRolls is greater than 0
>
> > > > > > > >     			CALL roll_dice with numRolls and point_dice
>
> > > > > > > >     			IF the size of point_dice vector is 0 and numRolls is less than 6
>
> > > > > > > >     			THEN
>
> > > > > > > > > >     				DECREMENT the player’s score member variable by
>
> > > > > > > > > > round_score
>
> > > > > > > > > > EXITWHILE
>
> > > > > > > >     			ELSE
>
> > > > > > > > > >     			CALL calculate_score with point_dice RETURNING
>
> > > > > > > > > > playerScore
>
> > > > > > > > > > INCREMENT round_score by playerScore
>
> > > > > > > > > > INCREMENT the player’s score member variable by
>
> > > > > > > > > > round_score
>
> > > > > > > > ENDIF
>
> > > > > >     		ENDWHILE
>
> > > >     	ENDIF
>
> >     ENDFOR
>
> ENDWHILE

---

## **Methods and Classes**

---
