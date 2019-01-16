
// PROTOCOLS

protocol Naming {
    var name: String { get }
    
    init(name: String)
}

protocol Chatable {
    var contacts: [String:Int] { get }
    var isSecretChatEnabled: Bool { get }
    
    func message(to name: String, text: String)
}

protocol Callable: Chatable {
    func call(to name: String)
}

class Messenger: Naming, Callable {
    let name: String
    var contacts = [String: Int]()
    
    var isSecretChatEnabled: Bool {
        return false
    }
    
    required init(name: String) {
        self.name = name
    }
    
    func message(to name: String, text: String) {
        print("Send message to \(name): \(text)")
    }
    
    func call(to name: String) {
        print("Call to \(name)")
    }
}
