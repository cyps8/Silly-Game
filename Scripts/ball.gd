extends RigidBody2D

@export var speed: float
@export var elephant: Node2D
@export var sfx: AudioStreamPlayer2D

var timer: float = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	sfx.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer += delta
	if (timer >= 2):
		sfx.play()
	pass
	
func _physics_process(delta: float) -> void:
	apply_central_force(-(position - elephant.position) * delta * speed)
	#position = position.move_toward(elephant.position, delta * speed)
