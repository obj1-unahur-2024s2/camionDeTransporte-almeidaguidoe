import cosas.*

object camion {
    const cosasCargadas = []

    method cargar(cosa) {
        cosasCargadas.add(cosa)
    }

    method pesoTotal() = 1000 + cosasCargadas.sum({c => c.peso()})

    method sonTodosPesosImpares() {
        return cosasCargadas.all({c => c.peso() % 2 != 0})
    }

    method hayCosaConPeso(peso) {
        return cosasCargadas.any({c => c.peso() == peso})
    }

    method primeraCosaConPeligrosidad(nivelPeligrosidad) {
        return cosasCargadas.find({c => c.nivelPeligrosidad() == nivelPeligrosidad})
    }

    method todasCosasConPeligrosidad(nivelPeligrosidad) {
        return cosasCargadas.filter({c => c.nivelPeligrosidad() >= nivelPeligrosidad})
    }

    method estaExcedidoDePeso() =  self.pesoTotal() > 2500

    method puedeCircularEnRuta(nivelPeligrosidad) {
        //if?
    }
}
