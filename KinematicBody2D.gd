extends KinematicBody2D


var velocitat := 500
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN * 3000
var salt := Vector2.UP * 70
var dreta := Vector2.RIGHT * 100
var combustible := 1000
var contador := 0
# Called when the node enters the scene tree for the first time.
func _ready():
#	position = Vector2(500,300)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	moviment += gravetat * delta
#	moviment.x = Input.get_axis("ves_esquerra", "ves_dreta") * velocitat
	if combustible > 0 and contador == 0:
		$Label.text = str(combustible/10)
		contador = 0
		if Input.is_action_pressed("ves_dalt"):
			moviment += salt 
			combustible -= 1
	elif combustible < 0:
		$Label.text = "espera " + str(contador)
		contador += 1
		if Input.is_action_just_pressed("ves_dalt"):
			moviment += salt 
			combustible += 10
			if combustible == 1000: contador = 1 
	moviment = move_and_slide(moviment + dreta * delta, Vector2(0,-1))



#	pass
