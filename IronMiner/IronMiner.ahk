InputBox, IronMax, amount of ore you want to mine

IronAmount := 0

bank(){
	;;random BankChest
	random, BankX, 123, 140
	random, BankY, 235, 245

	;;Random deposit
	random, DepoX, 445, 465
	random, DepoY, 330, 350

	;;random Ironspot 367, 167
	random, IronSpotX, 366, 371
	random, IronSpotY, 164, 167

	;;Random sleep
	random, sleep1, 100, 200
	random, sleep2, 300, 500
	random, fsleep, 400, 600
	random, sleep3, 3000 4000
	random, run, 4000, 5000

	sleep sleep2
	Mousemove, BankX, BankY, 3
	sleep sleep1
	click
	sleep run
	Mousemove, DepoX, DepoY, 3
	sleep sleep1
	click
	sleep sleep1
	send {escape}
	sleep sleep2
	Mousemove, 367, 167
	sleep sleep1
	click
	sleep sleep3
	IronAmount++
}

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


1::

loop {
	
	;;Random deposit
	random, DepoX, 445, 465
	random, DepoY, 330, 350

	;;Random Iron1
	random, Iron1X, 265, 270
	random, Iron1Y, 209, 218

	;;Random Iron2
	random, Iron2X, 254, 262
	random, Iron2Y, 197, 204

	;;Random Iron3
	random, Iron3X, 267, 277
	random, Iron3Y, 183, 191

	;;random BankChest
	random, BankX, 123, 140
	random, BankY, 235, 245

	;;random Ironspot 367, 167
	random, IronSpotX, 366, 371
	random, IronSpotY, 164, 167

	;;Random sleep
	random, sleep1, 100, 200
	random, sleep2, 300, 500
	random, sleep3, 3000, 4000



	Mousemove, Iron1X, Iron1Y, 3
	sleep sleep1
	click
	sleep sleep3
	ImageSearch, Inv3X, Inv3Y, 20, 375, 520, 500, E:\Scripts\Runescape\AHK\IronMiner\full.png
	if (ErrorLevel = 0){
		bank()
	}
	Mousemove, Iron2X, Iron2Y, 3
	sleep sleep1
	click
	sleep sleep3
	ImageSearch, Inv3X, Inv3Y, 20, 375, 520, 500, E:\Scripts\Runescape\AHK\IronMiner\full.png
	if (ErrorLevel = 0){
		bank()
	}
	Mousemove, Iron3X, Iron3Y, 3
	sleep sleep1
	click
	sleep sleep3
	ImageSearch, Inv3X, Inv3Y, 20, 375, 520, 500, E:\Scripts\Runescape\AHK\IronMiner\full.png
	if (ErrorLevel = 0){
		bank()
	}

	if ((IronAmount * 28) >= IronMax){
		logout()
	}

}

2:: reload
3::
Msgbox, Script was ended, goodbye! ESCLEF SCRIPTS
exitapp