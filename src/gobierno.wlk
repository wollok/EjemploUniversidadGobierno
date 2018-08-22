object gobierno {
    var property orientacion = neutro
	var property imagen = 51 

	method molestar(molestia) {
		imagen = imagen - orientacion.cuantoVaria(molestia)
	}
	
	method leHacen(medida) {
		self.molestar(medida.cuantaImagenAfecta())
	}

	method aumento() {
		return 0.15
	}

	method imagenPositiva() {
		return imagen >= 50
	}

}
object piquete {}

object neutro {
	method cuantoVaria(molestia) {
		return molestia 
	}
}
object derecha {
	method cuantoVaria(molestia) {
		return molestia * 2
	}
}	

object izquierda {
	method cuantoVaria(molestia){
		return molestia - 4
    }
  }

object republicano {
	method cuantoVaria(molestia){
		return 34
    }
  }
object universidad {

	var cansancio = 0
	var presupuesto = 1000
	var medidaFavorita = paro

	method reclamar() {
		cansancio = cansancio + 1
		self.medidaDeFuerza()
	}

	method medidaDeFuerza() {
		presupuesto = presupuesto + medidaFavorita.cuantoPresupuesto()
		gobierno.molestar(1)
		gobierno.leHacen(medidaFavorita)
	}
	method aprenderAReclamar(nuevaMedida){
		medidaFavorita = nuevaMedida
	}
	method sePudreTodo() {
		self.medidaDeFuerza()
		self.aprenderAReclamar(marcha)
		self.medidaDeFuerza()
		self.aprenderAReclamar(clasePublica)
		self.medidaDeFuerza()
	}
	
	

}

object paro {

	method cuantaImagenAfecta() {
		return 10
	}
	method cuantoPresupuesto() {return 10}

}

object marcha {
	var manifestantes = 12000
	method cuantaImagenAfecta() {
		return manifestantes / 1000
	}
	method cuantoPresupuesto() {return 12}
}

object clasePublica {
	var lugar = 'obelisco'
	method cuantaImagenAfecta() {
		return lugar.size()
	}
	method cuantoPresupuesto() {
		return self.cuantaImagenAfecta() * 2
	}
}


