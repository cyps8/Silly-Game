extends RigidBody2D

class_name Elephant

static var ins: Elephant

func _init():
	ins = self

@export var trunkStart: Node2D

@export var trunkEnd: RigidBody2D

@export var bodies: Array[Texture2D]

@export var waterParticles: CPUParticles2D

@export var meter: TextureProgressBar

var watering: bool = false

var juiceMax = 30.0

var juice = 10.0

var inJuice: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$BodySprite.texture = bodies[0]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):

	if inJuice:
		juice += _delta * 2

	if Input.is_action_pressed("water") && juice > 0:
		watering = true
		juice -= _delta
	else:
		watering = false

	meter.value = juice / juiceMax

	if watering:
		apply_central_impulse(-(trunkEnd.global_position - trunkStart.global_position).normalized() * 1000)
		
	waterParticles.emitting = watering

	if linear_velocity.length() > 5:
		$BodySprite.texture = bodies[1]
	else:
		$BodySprite.texture = bodies[0]
