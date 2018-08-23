object gobierno {
    var orientacion = neutro
	var imagen = 51 

	method serMolestado(puntos) {
		imagen = imagen - orientacion.cuantoVariaImagen(puntos)
	}
	
	method sufrir(medida) {
		self.serMolestado(medida.cuantaImagenAfecta())
	}

	method tieneImagenPositiva() {
		return imagen >= 50
	}
	
	method imagen(){
		return imagen
	}
}


object neutro {
	method cuantoVariaImagen(puntos) {
		return puntos 
	}
}
object derecha {
	method cuantoVariaImagen(puntos) {
		return puntos * 2
	}
}	
object izquierda {
	method cuantoVariaImagen(puntos){
		return puntos - 4
    }
}
object republicano {
	method cuantoVariaImagen(puntos){
		return 34
    }
}
  
 
object universidad {
	var cansancio = 0
	var presupuesto = 1000
	var medidaAcordada = paro

	method reclamar() {
		cansancio = cansancio + 1
		self.aplicarMedidaDeFuerza()
	}

	method aplicarMedidaDeFuerza() {
		presupuesto = presupuesto + medidaAcordada.cuantoPresupuestoGana()
		gobierno.serMolestado(1)
		gobierno.sufrir(medidaAcordada)
	}
	
	method acordarMedida(nuevaMedida){
		medidaAcordada = nuevaMedida
	}
	
	method sePudreTodo(){
		self.aplicarMedidaDeFuerza()
		self.acordarMedida(marcha)
		self.aplicarMedidaDeFuerza()
		self.acordarMedida(clasePublica)
		self.aplicarMedidaDeFuerza()
	}
}

object paro {
	method cuantaImagenAfecta(){
		return 10
	}
	method cuantoPresupuestoGana(){
		return 10
	}
}

object marcha {
	var cantManifestantes = 12000
	method cuantaImagenAfecta(){
		return cantManifestantes / 1000
	}
	method cuantoPresupuestoGana(){
		return 12
	}
}

object clasePublica {
	var lugar = 'obelisco'
	method cuantaImagenAfecta() {
		return lugar.size()
	}
	method cuantoPresupuestoGana() {
		return self.cuantaImagenAfecta() * 2
	}
}


