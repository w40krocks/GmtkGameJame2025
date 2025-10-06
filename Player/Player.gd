extends CharacterBody2D

@export var sprite : Sprite2D
@export var sprite_animator : AnimationPlayer
@export var collider : CollisionShape2D
@export var interacter : Area2D

@export var not_in_cutscene := true
const SPEED = 100.0

@onready var has_harpoon := false

func _process(delta: float) -> void:
	if not_in_cutscene:
		_choose_sprite()

func _physics_process(delta: float) -> void:
	if not_in_cutscene:
		var direction := Input.get_vector("Left", "Right", "Up", "Down")
		if direction:
			velocity = direction * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			velocity.y = move_toward(velocity.y, 0, SPEED)
	move_and_slide()

func _choose_sprite():
	sprite_animator.speed_scale = 1
	if abs(velocity.x) >0:
		sprite_animator.play("walk_horizontal")
		if velocity.x > 0:
			collider.position = Vector2(0,5)
			sprite.flip_h = false
			interacter.position = Vector2(2.5,0)
		else:
			interacter.position = Vector2(-2.5,0)
			collider.position = Vector2(0,5)
			sprite.flip_h = true
	elif velocity.y < 0:
		interacter.position = Vector2(0,-4)
		sprite_animator.play("walk_up")
	elif velocity.y >0:
		interacter.position = Vector2(0,4)
		sprite_animator.play("walk_down")
	else:
		sprite_animator.speed_scale = 0

func _play_animation(animation : String):
	sprite_animator.play(animation)
	sprite_animator.speed_scale = 1
