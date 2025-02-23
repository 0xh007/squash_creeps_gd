extends Node

@export var mob_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_mob_timer_timeout() -> void:
	var mob: Node = mob_scene.instantiate()
	
	var mob_spawn_location: Node = get_node("SpawnPath/SpawnLocation")
	mob_spawn_location.progress_ratio = randf()
	
	var player_position: Vector3 = $Player.position
	mob.initialize(mob_spawn_location.position, player_position)
	
	add_child(mob)
