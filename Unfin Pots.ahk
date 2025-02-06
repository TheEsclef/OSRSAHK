InputBox, invLimit, Number of Pots, Enter the amount of pots you'd like to make!

global invCount := 0


;;LOGOUT FUNCTION
logout() {
	random, logout1x, 630, 660
	random, logout1y, 495, 520
	random, logout2x, 720, 738
	random, logout2y, 464, 487
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


	;;Pot or Herb location
	random, inv1X, 619, 646
	random, inv1Y, 351, 375


	;;Pot or Herb location
	random, inv2X, 660, 693
	random, inv2Y, 351, 375


	;;BankOpen
	random, BankX, 313, 341
	random, BankY, 134, 211


	;;Deposit3
	random, DepoX, 440, 472
	random, DepoY, 327, 355


	;;Random Pot or herb from bank
	random, Item1X, 421, 453
	random, Item1Y, 148, 174


	;;Button Location
	random, buttonX, 225, 320
	random, buttonY, 425, 485

	;;Random Pot or Herb form bank
	random, Item2X, 421, 453
	random, Item2Y, 185, 207


	;;Random Sleep times
	random, sleep1, 200, 500
	random, sleep2, 300, 400
	random, brewing, 9000, 10000

	;;FUNCTIONING PART OF SCRIPT
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

	invCount++

	if (invCount = invLimit) {
	logout()
	sleep sleep1
	exitapp
	}

}



2:: reload
3:: exitapp