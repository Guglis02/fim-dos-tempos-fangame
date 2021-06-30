extends InteractableItem

export(NodePath) var dialogue_ui; 

onready var dialoguePlayer = $DialoguePlayer;
onready var animationTree = $AnimationTree;
onready var busy = false;

func interaction_can_interact(interactionComponentParent : Node) -> bool:
	return interactionComponentParent is Player

func interaction_get_text() -> String:
	return "";

# warning-ignore:unused_argument
func interaction_interact(interactionComponentParent : Node) -> void:
	if busy == false:
		var distance = (interactionComponentParent.global_position - self.global_position);
		#print(distance.normalized());
		animationTree.set("parameters/Idle/blend_position", distance.normalized());
		get_node(dialogue_ui).show_dialogue(dialoguePlayer);
		busy = true;

func _on_DialoguePlayer_dialogue_finished():
	busy = false;
