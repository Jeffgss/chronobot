extends AnimatedSprite2D

var speed: int = 600
var direction: int

func _physics_process(delta: float) -> void:
	move_local_x(direction * speed * delta)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_timer_timeout() -> void:
	queue_free()


func _on_hitbox_area_entered(area: Area2D) -> void:
	print("Bullet area entered")


func _on_hitbox_body_entered(body: Node2D) -> void:
	print("Bullet body entered")
