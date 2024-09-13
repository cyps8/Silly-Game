extends RigidBody2D

@export var trunkEnd: RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("water"):
		apply_central_impulse(-(trunkEnd.global_position - global_position).normalized() * 1000)
