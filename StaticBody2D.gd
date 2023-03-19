extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.f
func _process(delta):
	rotation_degrees += 1



func _on_Area2D_body_entered(body):
	if body.name == "Personatge":
		$ColorRect.color = Color(1,0,0)
