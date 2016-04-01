//: Tarea Semana 4 Xcaret Arellano Ceniceros
//  Velocimetro digital

import UIKit

//Enumeracion llamada Velocidades con valores de tipo Int
enum Velocidades : Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    //Inicializador que recibe una velocidadInicial
    init (velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}


//Clase Auto
class Auto {
    //Atributos Instancia de la enumeracion Velocidades
    var velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    
    //Métodos
    init (){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
 
    
     func cambioDeVelocidad () -> (actual : Int, velocidadEnCadena : String){
        var actual : Int
        var velocidadEnCadena : String
        
        switch velocidad{
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Velocidad Baja"
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Media"

        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad Alta"
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad Media"
        }
        actual = velocidad.rawValue
        let resultado = (actual, velocidadEnCadena)
        return resultado
    }
    
}

//Instancia llamada auto
var auto = Auto.init()
print("\(auto.velocidad.rawValue), \(auto.velocidad)")


for i in 1...20{
    var impresion = auto.cambioDeVelocidad()
    print("\(impresion.actual), \(impresion.velocidadEnCadena)")
}






