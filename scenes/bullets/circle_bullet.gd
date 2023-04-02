extends Node2D
class_name CircleBullet

@export var radius: int = 10
@export var speed: int = 0
@export var initial_rotation_degree: float = 0
@export var init_color: Color = Color.YELLOW
@export var amplitude: float = 109
@export var frequency: int = 5
@export var offset: float = 0

func _draw():
	rotate(initial_rotation_degree)
	draw_circle(Vector2.ZERO, radius, init_color)

func _process(delta):
	offset += delta
	position += transform.x * speed * delta + transform.y * cos(offset * frequency) * amplitude * delta

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
