import bicis.*
import accesorios.*

class Deposito{
    const property bicis = []

    method bicisRapidas() = bicis.filter({b => b.velocidadCrucero() > 25})

    method marcasBicis() = bicis.map({c => c.marca()}).asSet()

    method esNocturno() = bicis.all({c => c.tieneLuz()})

    method hayBiciCargaPesada(carga) = bicis.any({c => c.carga() > carga})   

    method marcaBiciMasRapida() = bicis.max({c => c.velocidadCrucero()}).marca()

    method bicisLargas() = bicis.filter({c => c.largo() > 170}) 

    method cargaBicisLargas() = 
    if (! self.bicisLargas().isEmpty()){
        self.bicisLargas().sum({c => c.carga()})
    }
    else{
        return 0
    }

    method cantBicisSinAccesorios() = bicis.count({ b => b.accesorios() == []})

    method bicisCompasDe(unaBici) {
        return bicis.filter({b => b.esCompaDe(unaBici)})
    }      
}
