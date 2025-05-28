//
//  complex.swift
//  ios1-vieira-altaee
//
//  Created by Anas Altaee on 22.10.24.
//

import Foundation

//Einen Initializer, der eine Instanz von Complex unter Angabe eines Real- und Imaginärteils erzeugt.
 class Complex {
    var real: Double
    var imag: Double
    
    
    init(real: Double, imag: Double) {
        self.real = real
        self.imag = imag
    }
     
     
     
     //incrementBy mit einem Parameter vom Typ Double, dessen Wert zum Realteil dazu addiert wird,

     func incrementBy(realValu: Double){
         self.real += realValu
     }
     
     //incrementBy mit einem Parameter vom Typ Double, dessen Wert zum Imaginärteil dazu addiert wird,
     func incrementBy(imagValu: Double){
         self.imag += imagValu
     }
     
     //incrementBy mit einem Parameter vom Typ Complex, der dazu addiert wird.
     func incrementBy(complexValu: Complex){
         self.real += complexValu.real
         self.imag += complexValu.imag
     }
    
     // Eine Methode multiplyBy mit einem Parameter vom Typ Complex, der zum Wert der aufrufenden Instanz multipliziert wird.
     func multiplyBy(complexValue: Complex) {
             let newReal = self.real * complexValue.real - self.imag * complexValue.imag
             let newImag = self.real * complexValue.imag + self.imag * complexValue.real
             self.real = newReal
             self.imag = newImag
         }
     
     //Eine Methode rotateBy mit einem Parameter, der einen Winkel angibt, um den der Wert der aufrufenden Instanz rotiert wird.
     func rotateBy(angle: Double) {
         multiplyBy(complexValue: Complex(real: cos(angle), imag: sin(angle)))
//         let newReal = self.real * cos(angle) - self.imag * sin(angle)
//         let newImag = self.real * sin(angle) + self.imag * cos(angle)
//         self.real = newReal
//         self.imag = newImag
         
     }
     
     //Eine Methode plus mit einem Parameter vom Typ Complex und einem Rückgabewert vom Typ Complex. Die Methode soll die Summe des Wertes der aufrufenden Instanz und der übergebenen komplexen Zahl zurückgeben, ohne seinen eigenen Wert zu verändern.
     func plus(complex: Complex) -> Complex {
         let sum = Complex(real: self.real + complex.real, imag: self.imag + complex.imag)
         return sum
     }
     var description: String {
         return "\(real) + \(imag) i"
     }
}
