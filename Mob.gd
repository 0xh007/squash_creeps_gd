extends CharacterBody3D

# Minimum speed of the mob in meters per second
@export var min_speed: int = 10

# Maximum speed of the mob in meters per second
@export var max_speed: int = 18

func _physics_process(_delta: float) -> void:
    move_and_slide()