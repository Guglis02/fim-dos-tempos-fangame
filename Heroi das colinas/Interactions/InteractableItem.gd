extends Node
class_name InteractableItem

# By default interactable items are only availble to the Player class
func interaction_can_interact(interactionComponentParent : Node) -> bool:
	return interactionComponentParent is Player

enum CellType { ACTOR, OBSTACLE, OBJECT };
#warning-ignore:unused_class_variable
export(CellType) var type = CellType.ACTOR;

var active = true setget set_active;

func set_active(value):
	active = value;
	set_process(value);
	set_process_input(value);
