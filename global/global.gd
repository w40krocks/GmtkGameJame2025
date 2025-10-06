extends Node

@onready var hub_world : PackedScene = load("res://Assets/Environments/Hub/hub_world.tscn")

@onready var areas : Dictionary ={
	"laundry" : false,
	"bike" : false,
	"camp" : false
}
