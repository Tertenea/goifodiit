#P. Kiviorg
#15.03.2023
#Harjutus 1
extends Node

var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()
	var name = 'nimi'
	var hp = 3
	var randomnum = rng.randi_range(0, 19)
	
	print(name)
	print(hp)
	print(len(name))
	print(hp+2)
	print(randomnum)
