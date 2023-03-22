#P. Kiviorg
#15.03.2023
#Harjutus 6
extends Node

var rng = RandomNumberGenerator.new()

var hp = 100
var salv = 5
var lasud = 0.0
var hitp = 0.0

func _ready():
	$"TextureRect/RichTextLabel2".text = "peepee"
	print('------------------------------')
	print('--------Tulistamismäng--------')
	print('--------Peeter Kiviorg--------')
	print('------------------------------')
	pass

func _process(delta):
	rng.randomize()
	var hit = bool(randi() % 2) 
	if Input.is_action_just_pressed("reload"):
		print('laen salve!')
		
		salv = 5
	if Input.is_action_just_pressed("tulista"):
		if salv > 0:
			print('piu piu')
			salv -= 1
			lasud += 1
			print('salves ',salv,' kuuli')
			
			if hp > 0:
				if hit == true:
					var dmg = rng.randi_range(15, 25)
					hp -= dmg
					hitp +=1
					print('Pihtas -',dmg,' Elud: ',hp)
				else:
					print('Möödas -0 Elud: ',hp)
			else:
				print('---------Mäng läbi---------')
				print('Laskude arv: ',lasud)
				var efekt = round(hitp/lasud*100)  
				print(hitp)
				print('Efektiivsus: ',efekt,'%')
					
				get_tree().quit()
			
		else:
			print('salv tühi..')
	
