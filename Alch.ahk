InputBox, AlchAmount, Input the amount of items you want to alch!

global AmountAlched = 0

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


1::

random, SpellbookX, 740, 760
random, SpellbookY, 202, 225
Mousemove, SpellbookX, SpellbookY, 3
quickclick()
sleep 1000

loop {
	
	;;Random Item Location
	random, ItemX, 702, 730
	random, ItemY, 353, 373

	;;Random Alch Icon
	random, AlchX, 707, 720
	random, AlchY, 345, 360


	;;Random Sleeptimes
	random, sleep1, 100, 200
	random, sleepalch, 3000, 3200

	quickclick() {
		sleep sleep1
		click
		sleep sleep1
	}

	alchclick() {
		sleep sleep1
		click
		sleep sleepalch
	}

	if (AmountAlched != AlchAmount){
	Mousemove, AlchX, AlchY, 3
	sleep sleep1
	click
	sleep sleep1
	Mousemove, ItemX, ItemY, 3
	sleep sleep1
	click
	sleep sleepalch
	AmountAlched++
	}
	else{
	logout()
	}
}

2:: reload
3:: exitapp