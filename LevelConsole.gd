extends Node

#export (Global.INGREDIENT) var ingredient = Global.INGREDIENT.SALMON
#Only level related stuff

var testI = [0,1,2,3,5]
var money = 0

onready var money_node = get_node("HUD/CenterContainer/Money")


func _ready():
	Global.Console = self


func getIng():
	randomize ( )
	var Ingredient = testI[randi()%5]
  
	return Ingredient


func minusPoint(type):
	var point = 0
	
	if type == 0:
		point = 1
	if type == 1:
		point = 3
	
	money -= point

	money_node.changePoint(point,0)


func addPoint(_point):
	if _point != null:
		money += _point
	else:
		money += 5
	
	money_node.changePoint(_point,1)
