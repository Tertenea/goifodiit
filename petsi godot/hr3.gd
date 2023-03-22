#P. Kiviorg
#15.03.2023
#Harjutus 3
extends Node

var vaenlasehp = 100
var hp = 100
var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()
	while vaenlasehp > 0 && hp > 0:
		var dmg = rng.randi_range(8, 15)
		var vaenlasedmg = rng.randi_range(9, 16)
		
		vaenlasehp = vaenlasehp - dmg
		hp = hp - vaenlasedmg
		
		print('Sinu hit: ',dmg,' Vastase elud: ',vaenlasehp)
		print('Vastase hit: ',vaenlasedmg,' Sinu elud: ',hp)

	if hp <= 0 && vaenlasehp <= 0:
		print('Viik, mõlemad surite')
	elif hp > vaenlasehp:
		print('Sa võitsid, sul jäi alles ',hp,' elu')
	else:
		print('Sa kaotasid, vastasel jäi alles ',vaenlasehp,' elu')
