#P. Kiviorg
#15.03.2023
#Harjutus 2
extends Node
var raha = 30
var pyksihind = 23

var kylg1 = 41
var kylg2 = 41

func _ready():
	
	if raha >= pyksihind:
		raha = raha - pyksihind
		print('ostsid püksid, sul on järgi ',raha,' raha')
	else:
		var puudu = pyksihind - raha
		print('sul pole pükste jaoks piisavalt raha, sul on vaja ',puudu,' raha juurde')
	
	
	var pindala = kylg1 * kylg2
	if kylg1 == kylg2:
		print('tegemist on ruuduga, pindala on ',pindala)
	else:
		print('tegemist on ristkülikuga, pindala on ',pindala)
