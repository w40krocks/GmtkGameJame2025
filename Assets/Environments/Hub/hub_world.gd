extends Node2D

func _ready() -> void:
	if Global.areas["laundry"]:
		$ground/top_wall/Laundry.show()
		$ground/top_wall/doors/laundry/Area2D.accessible = false
		$ground/top_wall/doors/laundry.frame = 1
		
	if Global.areas["bike"]:
		$ground/top_wall/bike.show()
		$ground/top_wall/doors/shed/Area2D.accessible = false
		$ground/top_wall/doors/shed.frame = 1
		
	if Global.areas["camp"]:
		$ground/top_wall/camp.show()
		$ground/Bottom_wall/doors/camp/Area2D.accessible = false
		$ground/Bottom_wall/doors/camp.frame = 3
		
