extends Control

onready var pauseScreen = $PauseScreen;
onready var optionsScreen = $OptionsScreen;

func _ready():
	unpause();

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		if get_tree().paused == false:
			get_tree().paused = true;
			pauseScreen.visible = true;
			pauseScreen.get_children()
		else:
			unpause();

func unpause():
	get_tree().paused = false;
	pauseScreen.visible = false;
	optionsScreen.visible = false;

func _on_UnpauseButton_pressed():
	unpause();
	
func _on_OptionsButton_pressed():
	optionsScreen.visible = true;

func _on_QuitButton_pressed():
	#get_tree().quit();
	pass;

func _on_HSlider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value);

func _on_ReturnButton_pressed():
	optionsScreen.visible = false;
