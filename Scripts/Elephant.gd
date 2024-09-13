extends RigidBody2D

@export var trunkStart: Node2D

@export var trunkEnd: RigidBody2D

@export var bodies: Array[Texture2D]

# Called when the node enters the scene tree for the first time.
func _ready():
	$BodySprite.texture = bodies[0]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("water"):
		apply_central_impulse(-(trunkEnd.global_position - global_position).normalized() * 1000)

	if linear_velocity.length() > 5:
		$BodySprite.texture = bodies[1]
	else:
		$BodySprite.texture = bodies[0]
