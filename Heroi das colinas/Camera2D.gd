extends Camera2D

onready var topLeft = $Limits/TopLeft;
onready var bottomRight = $Limits/BottomRight;
onready var caveTopLeft = $Limits/CaveTopLeft;
onready var caveBottomRight = $Limits/CaveBottonRight;

func _ready():
	set_surface_limits();

func _process(_delta):
	self.position = position.round();
	force_update_scroll();

func set_surface_limits():
	limit_top = topLeft.position.y;
	limit_left = topLeft.position.x;
	limit_bottom = bottomRight.position.y;
	limit_right = bottomRight.position.x;

func set_cave_limits():
	limit_top = caveTopLeft.position.y;
	limit_left = caveTopLeft.position.x;
	limit_bottom = caveBottomRight.position.y;
	limit_right = caveBottomRight.position.x;

func _on_CaveIn_body_entered(_body):
	set_cave_limits();

func _on_CaveExit_body_entered(_body):
	set_surface_limits();

func _on_Player_die():
	set_surface_limits();

