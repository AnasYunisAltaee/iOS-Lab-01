//
//  main.swift
//  ios1-vieira-altaee
//
//  Created by Anas Altaee on 15.10.24.
//

import Foundation

/*Schreiben Sie in main.swift eine Funktion readDouble(), die von der Konsole einen String einließt, diesen zu einem Double konvertiert und zurückgibt. Falls die Konvertierung fehlschlägt, soll diese Funktion 0.0 zurückliefern.
 Wettbewerb: Wer schreibt die "kürzeste" Funktion? */



func readDouble() -> Double {
    if let input = readLine(), let doubleValue = Double(input) {
        return doubleValue
    }
    return 0.0
}


//func readDouble() -> Double {
//    Double(readLine() ?? "") ?? 0.0
//} 


/* 1. Einlesen einer komplexen Zahl über die Konsole.
Verwenden Sie dazu zwei Mal readDouble()
Geben Sie nach dieser, wie auch nach jeder weiteren Aktion die komplexe Zahl zur Kontrolle auf der Konsole aus.
*/



print("Geben Sie den Realteil ein:")
let realPart = readDouble()
print("Geben Sie den Imaginärteil ein:")
let imagPart = readDouble()

// Objct Complex-Instanz
var complexNumber = Complex(real: realPart, imag: imagPart)
print(complexNumber.description)

// Schritt 1: Addieren der Zahl (1.2 + 2.4 i)
complexNumber.incrementBy(complexValu: Complex(real: 1.2, imag: 2.4))
//complexNumber.incrementBy(realValu: 1.2)
//complexNumber.incrementBy(imagValu: 2.4)
print(complexNumber.description)

//Erhöhen Sie den Realteil um 2.2.
complexNumber.incrementBy(realValu: 2.2)
print(complexNumber.description)

////Erhöhen Sie den Imaginärteil um 0.6.
complexNumber.incrementBy(imagValu: 0.6)

print(complexNumber.description)

//Multiplizieren Sie mit (0.5 + 1.0 i).
complexNumber.multiplyBy(complexValue: Complex(real: 0.5, imag: 1.0))
print(complexNumber.description)

//Rotieren Sie um den Winkel pi (Double.pi).
complexNumber.rotateBy(angle: Double.pi)
print("Nach Rotation um pi: \(complexNumber.description)")

// Berechnen der Summe mit (0.2 + 0.9i)
let result = complexNumber.plus(complex: Complex(real: 0.2, imag: 0.9))
print("Summe mit (0.2 + 0.9i): \(complexNumber.description)")
