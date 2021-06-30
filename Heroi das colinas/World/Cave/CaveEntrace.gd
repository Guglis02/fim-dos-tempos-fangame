extends Node2D

onready var caveInside = $CaveInside;
onready var caveOutside = $CaveOutside;

func _on_CaveIn_body_entered(body):
	body.set_global_position(Vector2(caveInside.position.x, caveInside.position.y));

func _on_CaveExit_body_entered(body):
	body.set_global_position(Vector2(caveOutside.position.x, caveOutside.position.y));
