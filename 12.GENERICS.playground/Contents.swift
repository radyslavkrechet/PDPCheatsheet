
// GENERICS

protocol MusicalInstrument {
    var model: String { get }
    
    func play(song: String, by name: String, from band: String)
}

class AcousticGuitar: MusicalInstrument {
    let model: String
    
    init(model: String) {
        self.model = model
    }
    
    func play(song: String, by name: String, from band: String) {
        print("\(name) from \(band) plays \(song)")
    }
}

class ElectricGuitar: MusicalInstrument {
    var model: String
    
    init(model: String) {
        self.model = model
    }
    
    func play(song: String, by name: String, from band: String) {
        print("\(name) from \(band) plays \(song)")
    }
}

class GuitarPlayer<Guitar: MusicalInstrument> {
    let name: String
    var band: String
    var guitar: Guitar
    
    init(name: String, band: String, guitar: Guitar) {
        self.name = name
        self.band = band
        self.guitar = guitar
    }
    
    func play(song: String) {
        guitar.play(song: song, by: name, from: band)
    }
}

let acousticGuitar = AcousticGuitar(model: "Line 6 Variax Acoustic 700")
let acousticGuitarPlayer = GuitarPlayer(name: "James Hetfield", band: "Metallica", guitar: acousticGuitar)
acousticGuitarPlayer.play(song: "Nothing Else Matters")

let еlectricGuitar = ElectricGuitar(model: "Gibson SG")
let еlectricGuitarPlayer = GuitarPlayer(name: "Angus Young", band: "AC/DC", guitar: еlectricGuitar)
еlectricGuitarPlayer.play(song: "Highway To Hell")
