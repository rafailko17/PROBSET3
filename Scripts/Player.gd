extends Node

var health: int = 100
const MAX_HEALTH: int = 1000
var speed: int = 50
var player_name: String = "Leonardo"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Greetings_Teacher")	
	var score = 5
	
	# Testing take_damage and heal as requested in the prompt
	take_damage(15)
	take_damage(15)
	heal()

func take_damage(amount: int) -> void:
	# Subtract damage from health
	health -= amount
	# Print damage taken and remaining health using string concatenation
	print("Player took damage: " + str(amount) + " | Remaining health: " + str(health))

func heal() -> void:
	while health < MAX_HEALTH:
		health += 7
		# Log current health to the console for each step of the loop
		print("Current health: " + str(health))
	
	# Clamp health to ensure it doesn't exceed MAX_HEALTH
	if health > MAX_HEALTH:
		health = MAX_HEALTH
		
	print("Player healed! Current health: " + str(health))
