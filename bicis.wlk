import accesorios.*

class Bici{
  const property rodado 
  const property largo 
  const property marca 
  const property accesorios = []   

  method agregarAccesorio(unAccesorio) {
    accesorios.add(unAccesorio)
  }

  method quitarAccesorio(unAccesorio) {
    if (accesorios.contains(unAccesorio)){
      accesorios.remove(unAccesorio)
    }
  }


  method altura() =  rodado * 2.5 + 15

  method velocidadCrucero() {
    if( largo > 120){
      return rodado +6
    }
    else{
      return rodado +2
    }
  }

  method carga() = accesorios.sum({c => c.carga()})

  method pesoAccesorios() =   accesorios.sum({c => c.peso()})

  method peso() = rodado / 2 + self.pesoAccesorios()  

  method tieneLuz() = accesorios.any({c => c.esLuminoso()}) 

  method accesoriosLivianos() = accesorios.count({c => c.peso() < 1}) 

  method esCompaDe(otraBici) {
    return otraBici.marca() == self.marca() and otraBici.largo() - self.largo().abs() < 10 and ! otraBici == self
  } 
}

