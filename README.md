# Compression_swift

## Run Length Encode (RLE)

Este algoritmo comprime una secuencia de datos repitiendo los valores idénticos y almacenando la cantidad de repeticiones en lugar de almacenar cada valor por separado.

*Ejemplo*:

| state  | value  |
|:----------|:----------|
| original    | AAAABBBCCDAABBBKKKKKKJJDFFEEEAAAAAKKKLLOOOOO    |
| compressed    | 4A3B2C1D2A3B6K2J1D2F3E5A3K2L5O    |



```swift
func runLengthEncode(_ input: String) -> String {
    var result = ""
    var count = 1
    let characters = Array(input)
    
    for i in 0..<characters.count {
        if i < characters.count - 1 && characters[i] == characters[i + 1] {
            count += 1
        } else {
            result += "\(count)\(characters[i])"
            count = 1
        }
    }
    
    return result
}

let originalString = "AAAAEEECCD"
let compressedString = runLengthEncode(originalString)
print("Original: \(originalString)")
print("Comprimido: \(compressedString)")
//original String = "AAAABBBCCDAABBBKKKKKKJJDFFEEEAAAAAKKKLLOOOOO"
//compressed String = 4A3B2C1D2A3B6K2J1D2F3E5A3K2L5O"
```

