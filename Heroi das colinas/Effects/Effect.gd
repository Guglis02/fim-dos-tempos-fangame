extends AnimatedSprite;

func _ready():
	# warning-ignore:return_value_discarded
	self.connect("animation_finished", self, "_on_animation_finished");
	frame = 0;
	play("Animate");

func _on_animation_finished():
	queue_free();