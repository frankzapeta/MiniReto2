import UIKit

enum Velocidades : Int{
    case Apagado = 0, velocidadBaja = 20,  velocidadMedia = 50, velocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
     self = velocidadInicial
    }
   
}

class Auto {
    var velocidad : Velocidades
    
    init(velocidadinit : Velocidades) {
      self.velocidad = Velocidades(velocidadInicial: velocidadinit)
    }
    
    func cambioDeVelocidad() ->(actual : Int, velocidadEnCadena : String){
        if(velocidad == Velocidades.Apagado){
            velocidad=Velocidades.velocidadBaja;
             return (0 , "Apagado")
        }else{
            if(velocidad==Velocidades.velocidadBaja){
                velocidad = Velocidades.velocidadMedia
                return (20, "Velocidad Baja")
            }else{
                if(velocidad==Velocidades.velocidadMedia){
                    velocidad = Velocidades.velocidadAlta
                     return (50, "Velocidad Media")
                }else{
                    if(velocidad==Velocidades.velocidadAlta){
                        velocidad = Velocidades.velocidadMedia
                        return (120, "Velocidad Alta")
                    }
                }
            }
        }
    
         return (velocidad.rawValue, "Apagado")
    }
    
}


var auto = Auto(velocidadinit: .Apagado)

for index in 1...20 {
  print(auto.cambioDeVelocidad())
}
