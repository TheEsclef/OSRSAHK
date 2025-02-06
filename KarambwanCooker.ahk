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
	random, FoodX, 580, 600
	random, FooxY, 250, 270


	;;Random Sleep
	random, sleep1, 100, 300
	random, sleep2, 300, 600
	random, cook, 65000, 66000


	;;Random deposit
	random, DepoX, 445, 465
	random, DepoY, 330, 350


	sleep sleep1
	Mousemove, BankX, BankY, 3
	sleep sleep1
	click
	sleep sleep2
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
	Mousemove, FoodX, FooxY, 3
	sleep sleep1
	click
	sleep sleep1
	Mousemove, FireX, FireY, 3
	sleep sleep1
	click
	sleep sleep2
	send, {space}
	sleep 50
	sleep cook
	cooked++

	if ((cooked * 28) >= foodamount){
	logout()
	}
}

2:: reload
3:: exitapp