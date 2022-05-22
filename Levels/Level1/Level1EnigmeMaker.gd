extends Node

class_name Level1EnigmeMaker

## GameState Node
#onready var gamestate : GameState = get_node("/root/Main/GameState")

## Colors
const colors : Array = [Color(1,0,0,1), Color(0,1,0,1), Color(0,0,1,1), Color(1,0,1,1), Color(0,1,1,1), Color(1,1,0,1)]
## words
const words : Array = ["echappe", "encore", "cassette", "the cake is a lie", "etalon du cul"]
## Letters
const letters : Array = ["k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]

## Code K7 num
var k7_code_answer_num : String = ""
## Code K7
var k7_code_answer : String
## Colors answer
var colors_answer : Array
## RandomNumberGenerator
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	if get_node("/root/Main/GameState").is_random:
		rng.randomize()
		for i in 4:
			var next_color = colors[rng.randi_range(0, colors.size()-1)]
			while colors_answer.size() > 0 and next_color == colors_answer[i-1]:
				next_color = colors[rng.randi_range(0, colors.size()-1)]
			colors_answer.append(next_color)
			rng.randomize()
		rng.randomize()
		k7_code_answer = words[rng.randi_range(0, words.size()-1)]
	else:
		colors_answer = [Color(1,0,1,1), Color(0,0,1,1), Color(1,0,0,1),  Color(0,1,1,1)]
		k7_code_answer = "echappe"
	_create_k7_num()
	colors_answer.append(Color(0,0,0,1))

func _create_k7_num() -> void:
	for letter in k7_code_answer:
			if letter == " ":
				k7_code_answer_num += "\n/ "
			else:
				var j = (letters.find(letter) + 7) % 26
				k7_code_answer_num += String(j) + " / "
