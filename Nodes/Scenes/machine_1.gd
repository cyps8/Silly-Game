extends Area2D

var isDead = false
@export var deadSprite: Texture2D
@export var mainSprite: Sprite2D
@export var wall: Node2D
@export var counter: Node2D
var theScript

@export var isLast: bool = false
@export var win: Node2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if (isLast):
		win.scale = Vector2(0,0)
	theScript = counter.get_script()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (has_overlapping_bodies() && !isDead):
		theScript.DestroyMachine()
		isDead = true
		mainSprite.texture = deadSprite
		if (wall != null):
			wall.queue_free()
		if (isLast):
			win.scale = Vector2(1,1)
	pass

func on_body_entered(body: Node2D):
	print(body)
