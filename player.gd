extends CharacterBody2D

@export var walk_speed = 200
@export var placeable = Vector2i(0,5)

func _physics_process(_delta: float) -> void:
	var left_right = Input.get_axis("left","right")
	var up_down = Input.get_axis("up","down")
	var direction = Vector2(left_right,up_down)
	velocity = direction.normalized() * walk_speed
	move_and_slide()

func _process(_delta: float) -> void:
	if Input.is_action_pressed("place"):
		var mouse_position = get_global_mouse_position()
		mouse_position = TileMapThing.local_to_map(mouse_position)
		TileMapThing.set_cell(mouse_position, 1, placeable)
