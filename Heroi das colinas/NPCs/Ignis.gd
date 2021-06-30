extends InteractableItem

export(NodePath) var dialogue_ui; 
export(Texture) var sprite2;

onready var dialoguePlayer = $DialoguePlayer;
onready var sprite = $Sprite;
onready var busy = false;

func interaction_can_interact(interactionComponentParent : Node) -> bool:
	if busy == false:
		return interactionComponentParent is Player;
	else:
		return false;
		
func interaction_get_text() -> String:
	return "";

# warning-ignore:unused_argument
func interaction_interact(interactionComponentParent : Node) -> void:
	if busy == false:
		get_node(dialogue_ui).show_dialogue(dialoguePlayer);
		busy = true;

func _on_DialoguePlayer_dialogue_finished():
	sprite.set_texture(sprite2);
