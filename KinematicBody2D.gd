extends KinematicBody2D


var velocitat := 500
var moviment := Vector2.ZERO
var gravetat := Vector2.UP * 3000
var salt := Vector2.DOWN * 70
var dreta := Vector2.RIGHT * 100
# Called when the node enters the scene tree for the first time.
func _ready():
#	position = Vector2(500,300)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	moviment += gravetat * delta
#	moviment.x = Input.get_axis("ves_esquerra", "ves_dreta") * velocitat
	if Input.is_action_pressed("ves_baix"):
		moviment += salt
		
	moviment = move_and_slide(moviment + dreta * delta, Vector2(0,-1))
#	pass
