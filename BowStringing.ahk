InputBox, invLimit, Number of Pots, Enter the amount of pots you'd like to make!

global invCount := 0


;;LOGOUT FUNCTION
logout() {
	random, logout1x, 645, 665
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


#Singleinstance force

1::

loop {
	
	;;Randomize click location


	;;Bow or Bowstring
	random, inv1X, 620, 650
	random, inv1Y, 351, 375


	;;Bow or Bowstring
	random, inv2X, 661, 690
	random, inv2Y, 351, 375


	;;BankOpen
	random, BankX, 360, 410
	random, BankY, 61, 250


	;;Deposit
	random, DepoX, 440, 460
	random, DepoY, 327, 350


	;;Bow or String
	random, Item1X, 423, 445
	random, Item1Y, 148, 174


	;;Button Location
	random, buttonX, 230, 310
	random, buttonY, 420, 490

	;;Bow or String
	random, Item2X, 423, 445
	random, Item2Y, 185, 207


	;;Random Sleep times
	random, sleep1, 200, 500
	random, sleep2, 300, 400
	random, brewing, 18000, 20000

	;;FUNCTIONING PART OF SCRIPT
	Mousemove, BankX, BankY, 3
	sleep sleep1
	click
	sleep sleep1
	Mousemove, DepoX, DepoY, 3
	sleep sleep1
	click
	sleep sleep1
	Mousemove, Item1X, Item1Y, 3
	sleep sleep1
	click
	sleep sleep1
	Mousemove, Item2X, Item2Y, 3
	sleep sleep1
	sleep sleep1
	click
	sleep sleep1
	send,{escape}
	sleep sleep1
	Mousemove, inv1X, inv1Y, 3
	sleep sleep1
	click
	sleep sleep1
	Mousemove, inv2X, inv2Y, 3
	sleep sleep1
	click
	sleep sleep1
	Mousemove, buttonX, buttonY, 3
	sleep sleep1
	click
	sleep brewing

	invCount++

	if ((invCount * 14) = invLimit) {
	logout()
	sleep sleep1
	exitapp
	}

}



2:: reload
3:: exitapp