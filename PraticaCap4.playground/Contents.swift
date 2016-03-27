//: MiniReto2 Un velocímetro de un automovil digital

import UIKit

//Declaración enum velocidades

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120

    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

//Declaración clase Auto

class Auto{
    var velocidad = Velocidades.Apagado
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        switch velocidad{
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
            return (0 , "Apagado")
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            return (20 , "Velocidad Baja")
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            return (50 , "Velocidad Media")
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            return (120 , "Velocidad Alta")
            
        }
    }
    
}

var auto = Auto()

for i in 1...20{
    print(auto.cambioDeVelocidad())
}