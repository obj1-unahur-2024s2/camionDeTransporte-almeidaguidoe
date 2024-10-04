import camion.*

object knightRider {
    const property peso = 500

    const property nivelPeligrosidad = 10
}

object bumblebee {
    const property peso = 800

    method nivelPeligrosidad() {
        if (estaTransformadoEnAuto) {
            return 15
        } else {
            return 30
        }
    }

    var estaTransformadoEnAuto = true
}

object paqueteDeLadrillos {
    var cantidadDeLadrillos = 50
    method peso() = cantidadDeLadrillos * 2

    const property nivelPeligrosidad = 2
}

object arenaAGranel {
    var property peso = 200

    const property nivelPeligrosidad = 1
}

object bateriaAntiAerea {

    var tieneMisiles = true
    method peso() {
        if (tieneMisiles) {
            return 300
        } else {
            return 200
        }
    }

    method nivelPeligrosidad() {
        if (tieneMisiles) {
            return 100
        } else {
            return 0
        }
    }
}

object contenedorPortuario {
    const cosasContenidas = []

    method agregarCosaContenida(cosa) {
        cosasContenidas.add(cosa)
    }

    method peso() = 100 + cosasContenidas.sum({c => c.peso()})

    method nivelPeligrosidad() {
        var mayor = 0
        if (cosasContenidas.size() != 0) {
            cosasContenidas.forEach({ c =>
                if (c.nivelPeligrosidad() > mayor) {
                    mayor = c.nivelPeligrosidad()
                }
            })
        }
        return mayor
    }
}

object residuosRadioactivos {
    var property peso = 100
    const property nivelPeligrosidad = 200
}

object embalajeDeSeguridad {
    var objetoEnvuelto = null
    method envolverObjeto(cosa) {
        objetoEnvuelto = cosa
    }

    method peso() = objetoEnvuelto.peso()

    method nivelPeligrosidad() = objetoEnvuelto.nivelPeligrosidad() / 2
}