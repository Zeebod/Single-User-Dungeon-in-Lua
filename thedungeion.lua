function thedungeion()

	run = true
	pChoice = io.read()
	pNumIn = io.read()
	randNum = math.random(1, 10)
	pRoll = math.random(1, 12) --you can still see better than the monstairs
	mRoll = math.random(1, 20) --they've been in the dark a while

	while run do
		io.write ("Welcome to my dungeion peasant")
		io.write ("Would you like to enter and go on an adventure?")

		repeat
			io.write ("Type Enter or Exit to make your choice")
			input= io.read()
		until input ~= nil

		if input == "Enter" then
			io.write ("Excellent you have chosen to enter my dungeion")
			io.write ("Let us begin....")
			os.execute("sleep 10")
			print ("Loading >>>>")
			print ("Just wait, this dungeion is full of dangier")
			os.execute("sleep 10")
			print ("Still loading")
			os.execute("sleep 10")
			print ("not broken I swaar")
			os.execute("sleep 10")
			io.write ("Dungeion is loaded")
			io.write ("As you enter the doorwarys you nostrials are assaulted")
			io.write ("The pungeant steanch of bogart and gooblin musk abounds")
			io.write ("This was a mistake to enter")
			io.write ("Thair r too pathz in frunt of yew")
			io.write ("Wun holds sirtin dum and wun holds tha way out")
			io.write ("Yor jurney a head reqwires input frum yew".."enter a number")
			onput= dungChoices[pNumIn]
			io.write (onput)

			for i=1, onput, 1
			do
				if randNum >= 7 and onput >= 7 then
					io.write ("Oar knows! A bogart!")
					io.write ("Prepair to due battle!")
					while player.health <= 100 do
						if pRoll > mRoll then
							bogart.health = player.damage - bogart.health
							io.write (bogart.health);
						elseif pRoll == mRoll then
							io.write ("Yew missed that shtrike")
						elseif mRoll > pRoll then
							player.health = bogart.damage - player.health
							io.write (player.health);
						elseif bogart.health == 0 then
							io.write ("Yew have slayne the bogart!"..":D")
						else
							player.health = 100 - player.health
							io.write ("Yew have dyed".."Ooooo noes")
							end
					end
				elseif randNum <= 6 and onput <= 6 or randNum >= 3 and onput >= 3 then
					print ("Oar noes! A gooblin!")
					print ("Prepair to due battle")
					while player.health <= 100 do
						if pRoll > mRoll then
							gooblin.health = player.damage - gooblin.health
							io.write (gooblin.health);
						elseif pRoll == mRoll then
							io.write ("Yew missed that shtrike")
						elseif mRoll > pRoll then
							player.health = gooblin.damage - player.health
							io.write (player.health);
						elseif gooblin.health == 0 then
							io.write ("Yew have slayne the gooblin!"..":D")
						elseif player.health == 0 then
							io.write ("Yew have dyed".."Ooooo noes")
							end
					end
				elseif onput == 10 and randNum == 10 then
					io.write ("Congrachulayshons,  yew have chosen well, and now")
					io.write ("yew r aloud too leeve the dungeion")
					break
					end
				if input == "Exit" then
					io.write ("You dis-a-point meh")
				run = false
			end
		end
	end
end
end

