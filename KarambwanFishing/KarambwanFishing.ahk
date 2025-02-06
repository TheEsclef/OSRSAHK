global Karambwan = 0
global trips = 0
global tripsmax = 0
#Singleinstance force


InputBox, tripsmax, Number of trips you want the bot to make!



logout(){
	random DoorX, 640, 667
	random DoorY, 497, 520
	random LogX, 600, 700
	random LogY, 450, 470
	sleep 100
	Mousemove, DoorX, DoorY, 3
	sleep 200
	click
	sleep 100
	Mousemove, LogX, LogY, 3
	sleep 100
	click
}




1::

loop {
	ImageSearch, Inv3X, Inv3Y, 20, 375, 520, 500, E:\Scripts\Runescape\AHK\KarambwanFishing\detect.png
	if (ErrorLevel = 0){
		Karambwan++
	}


	;;sleep randomly
	random, sleep1, 200, 400
	random, sleep2, 1000, 2000
	random, sleep3, 5000, 10000
	random, sleep4, 10000, 20000
	random, sleep5, 3000, 5000


	;;FairyRing Clicks

	random, Box1LX, 35, 70
	random, Box1LY, 180, 215
	random, Box1RX, 130, 170
	random, Box1RY, 180, 215

	random, Box2LX, 200, 240
	random, Box2LY, 180, 215
	random, Box2RX, 300, 340
	random, Box2RY, 180, 215

	random, Box3LX, 370, 400
	random, Box3LY, 180, 215
	random, Box3RX, 470, 510
	random, Box3RY, 180, 215

	random FairyButtonX, 200, 350
	random FairyButtonY, 300, 330



	;;Bankui clicks
	random DepositX, 660, 685
	random DepositY, 246, 269

	random BarrelX, 576, 605
	random BarrelY, 245, 270

	random BarrelEmptyX, 512, 630
	random BarrelEmptyY, 376, 384



	if (Karambwan = 1){
		random, Fairy1X, 275, 305
		random, Fairy1Y, 300, 330
		sleep sleep1
		Mousemove, Fairy1X, Fairy1Y, 
		sleep sleep1
		click
		sleep sleep3
		Mousemove, Box1RX, Box1RY, 3
		sleep sleep1
		click
		sleep sleep1
		Mousemove, Box2LX, Box2LY, 3
		sleep sleep1
		click
		sleep sleep1
		Mousemove, Box3LX, Box3LY, 3
		sleep sleep1
		click
		sleep sleep1
		click
		sleep sleep1
		Mousemove, FairyButtonX, FairyButtonY, 3
		sleep sleep1
		click
		sleep sleep3
		random, Movement1X, 438, 444
		random, Movement1Y, 309, 315
		Mousemove, Movement1X, Movement1Y, 3
		sleep sleep1
		click
		sleep sleep3
		random, Movement2X, 483, 488
		random, Movement2Y, 210, 215
		Mousemove, Movement2X, Movement2Y, 3
		sleep sleep1
		click
		sleep sleep4
		random, BankX, 268, 277
		random, BankY, 250, 260
		Mousemove, BankX, BankY, 3
		sleep sleep1
		click
		sleep sleep3
		Mousemove, DepositX, DepositY, 3
		sleep sleep1
		click
		sleep sleep1
		Mousemove, BarrelX, BarrelY, 3
		sleep sleep2
		MouseClick, right
		sleep sleep2
		Mousemove, BarrelEmptyX, BarrelEmptyY, 3
		sleep sleep2
		click
		sleep sleep2
		send,{escape}
		sleep sleep1
		random, Movement3X, 82, 86
		random, Movement3Y, 155, 158
		Mousemove, Movement3X, Movement3Y, 3
		sleep sleep1
		click
		sleep sleep4
		random, Movement4X, 120, 135
		random, Movement4Y, 95, 110
		Mousemove, Movement4X, Movement4Y, 3
		sleep sleep1
		click
		sleep sleep3
		Mousemove, Box1RX, Box1RY, 3
		sleep sleep1
		click
		sleep sleep1
		Mousemove, Box2LX, Box2LY, 3
		sleep sleep1
		click
		sleep sleep1
		click
		sleep sleep2
		Mousemove, FairyButtonX, FairyButtonY, 3
		sleep sleep1
		click
		sleep sleep3
		Mousemove, 260, 140, 3
		sleep sleep1
		click
		sleep sleep1
		trips++
		Karambwan = 0
	}
	if (tripsmax <= trips){
	logout()
	sleep 5000
	Msgbox, Thank you for using TheEsclef scripts, enjoy the GP
	}

}


2:: reload
3:: exitapp