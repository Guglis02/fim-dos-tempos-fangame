extends Control

onready var controlScreen = $ControlScreen;

func _ready():
	controlScreen.visible = false;
	
func _on_NewGameButton_pressed():
	get_tree().change_scene("res://World.tscn")


func _on_ControlsButton_pressed():
	controlScreen.visible = true;


func _on_ReturnButton_pressed():
	controlScreen.visible = false;
