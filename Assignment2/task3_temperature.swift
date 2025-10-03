import Foundation

func celsiusToFahrenheit(_ c: Double) -> Double { (c * 9/5) + 32 }
func celsiusToKelvin(_ c: Double) -> Double { c + 273.15 }
func fahrenheitToCelsius(_ f: Double) -> Double { (f - 32) * 5/9 }
func kelvinToCelsius(_ k: Double) -> Double { k - 273.15 }

//  Converts temperatures between Celsius, Fahrenheit, and Kelvin
func temperatureconverter(value: Double, unit: String) {
    switch unit.uppercased() {
    case "C":
        print("Celsius: \(value)")
        print("Fahrenheit: \(celsiusToFahrenheit(value))")
        print("Kelvin: \(celsiusToKelvin(value))")
    case "F":
        let c = fahrenheitToCelsius(value)
        print("Celsius: \(c)")
        print("Fahrenheit: \(value)")
        print("Kelvin: \(celsiusToKelvin(c))")
    case "K":
        let c = kelvinToCelsius(value)
        print("Celsius: \(c)")
        print("Fahrenheit: \(celsiusToFahrenheit(c))")
        print("Kelvin: \(value)")
    default:
        print("Error")
    }
}
