extends Node2D

var vides = 5
var meta = 0
var contador = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if meta == 1: $Personatge.position = Vector2(33300, 0)
	if vides <= 0:
		$Personatge.position = Vector2(0,0)
		vides = 5
		contador += 1
	$Contador.text = "Intent número... " + str(contador)
	$vides.text = "vides: " + str(vides)
	$vides.rect_position = $Personatge.position*Vector2.RIGHT + Vector2(-300, -300)


func _on_Area2D3_body_entered(body):
	if body.name == "Personatge":
		vides -=1


func _on_Area2D_body_entered(body):
	if body.name == "Personatge":
		vides -=1


func _on_Area2D_foc_body_entered(body):
	if body.name == "Personatge":
		vides = 0


func _on_Area2D_body_entered_meta(body):
	meta = 1
	pass # Replace with function body.
