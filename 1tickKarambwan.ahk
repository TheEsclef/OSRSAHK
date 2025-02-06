;;LOGOUT FUNCTION
logout() {
	random, logout1x, 656, 680
	random, logout1y, 495, 520
	random, logout2x, 600, 720
	random, logout2y, 450, 470
	random, logoutsleep1, 100, 200
	random, logoutsleep2, 300, 400

	Mousemove, logout1x, logout1y, 3
	sleep logoutsleep1
	click
	sleep logoutsleep1
	Mousemove, logout2x, logout2y, 3
	sleep logoutsleep2
	click
	Msgbox, Script Completed, enjoy the GP!
}


InputBox, foodamount, Input the amount of food you want to cook!

#Singleinstance force
global cooked := 0


1::
loop {

	;;Random deposit
	random, DepoX, 445, 465
	random, DepoY, 330, 350

	;; Inventory Item:  
	random, ItemX, 705, 725  
	random, ItemY, 465, 480 


	;;Random Bank
	random, BankX, 253, 290
	random, BankY, 270, 335


	;;Random Withdraw
	random, WithX, 424, 450
	random, WithY, 186, 210


	;;Random CampFire
	random, FireX, 353, 395
	random, FireY, 200, 250


	;;Random Food
	random, Food1X, 580, 600
	random, Foox2Y, 250, 270


	;;Random Sleep
	random, sleep1, 100, 300
	random, sleep2, 300, 600
	random, sleep3, 480, 540
	random, sleep4, 600, 1000
	random, sleepx, 20, 40
	random, sleepy, 100, 150
	random, cook, 65000, 66000


	;;Random deposit
	random, DepoX, 445, 465
	random, DepoY, 330, 350


	sleep sleep2
	Mousemove, BankX, BankY, 3
	sleep sleep2
	click
	sleep sleep4
	Mousemove, DepoX, DepoY
	sleep sleep1
	click
	sleep sleep1
	Mousemove, WithX, WithY, 3
	sleep sleep1
	click
	sleep sleep1
	send, {escape}
	sleep sleep2

	random, sleep10, 1, 3
	sleep (sleep10 * 600)

	lootamount = 0
	random, maxrepeat, 29, 36

	loop {
		;; Inventory Item:  
		random, ItemX, 705, 725  
		random, ItemY, 465, 480

		;;Random CampFire
		random, FireX, 353, 395
		random, FireY, 200, 250


		Send {Space down}
		Mousemove, ItemX, ItemY, 2 
		sleep sleepx
		click  
		sleep sleepx
		Mousemove, FireX, FireY, 2
		sleep sleepx
		click  
		Send {Space down}
		sleep sleep3
		lootamount++

		if (lootamount = maxrepeat){
			break
		}
	}

	Send {Space up}

	cooked++


	if ((cooked * 28) >= foodamount){
	logout()
	}
}

2:: reload
3:: 
Msgbox, Script was closed, if something happened let us know! ESCLEF SCRIPTS
exitapp