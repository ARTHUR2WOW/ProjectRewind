extends Area2D


var occupied = false

var nigiri = preload("res://Objects/Sushi_Scenes/Nigiri.tscn")
var roll = preload("res://Objects/Sushi_Scenes/Roll.tscn")

# Spawn sushi based on type
func spawn_sushi(type, recipe):


	match type:
		Global.S_TYPE.NIGIRI:
			var n = nigiri.instance()
			n.ingredient = recipe[0]


			Global.Console.minusPoint(type)
			n.set_position(get_local_mouse_position())


			add_child(n)
			
		Global.S_TYPE.ROLL:
			occupied = true
			
			var r = roll.instance()
			r.ingredient = recipe
			r.set_position(Vector2(0, 212))
			Global.Console.minusPoint(type)
			add_child(r)
