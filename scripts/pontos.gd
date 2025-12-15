extends Label

var pontos = 0

func add_pontos(value):
	pontos += value
	self.text = 'Pontos: '+ str(pontos)
