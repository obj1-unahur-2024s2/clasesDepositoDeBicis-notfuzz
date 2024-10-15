import bicis.*
class Farolitos{
    method peso() = 0.5

    method carga() = 0

    method esLuminoso() = true  
}

class Canasto{
    const property volumen 

    method peso() = volumen / 10

    method carga() = volumen *2

    method esLuminoso() = false    
}

class Morral {
  const property largo 
  var property tieneOjoDeGato 
  method peso() = 1.2
  method carga() = largo / 3 
  method esLuminoso() = tieneOjoDeGato   
}

