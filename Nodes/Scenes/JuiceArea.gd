extends Area2D

func TrunkEnter(_body):
	Elephant.ins.inJuice = true

func TrunkExit(_body):
	Elephant.ins.inJuice = false