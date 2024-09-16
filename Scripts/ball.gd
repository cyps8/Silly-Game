extends RigidBody2D

@export var speed: float
@export var elephant: Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _physics_process(delta: float) -> void:
	apply_central_force(-(position - elephant.position) * delta * speed)
	#position = position.move_toward(elephant.position, delta * speed)
