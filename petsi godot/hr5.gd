#P. Kiviorg
#15.03.2023
#Harjutus 4
extends Node

var punktid = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]
var tunnitasu = 3
var tunnid = 94

func _tasu():
	if tunnid <= 40:
		var tasu = tunnid * tunnitasu
		print('Teenitud tasu: ',int(round(tasu)))
	else:
		var tasu = 40*tunnitasu+(tunnid-40)*1.5*tunnid
		print('Teenitud tasu: ',int(round(tasu)))
			
func keskmine():
	var summa = 0
	for punkt in punktid:
		summa += punkt
	var kogus = punktid.size()
	var keskmine = summa/kogus
	print(keskmine)

func hinne():
	for punkt in punktid:
		if punkt >= 90 && punkt <= 100:
			print(punkt,'p - 5')
		elif punkt >= 75 && punkt < 90:
			print(punkt,'p - 4')
		elif punkt >= 50 && punkt < 75:
			print(punkt,'p - 3')
		else:
			print(punkt,'p - 2')
			
func koik():
	print(punktid)
		
func _ready():
	_tasu()
	keskmine()
	hinne()
	koik()
