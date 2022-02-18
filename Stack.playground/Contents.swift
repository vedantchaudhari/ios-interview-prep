import Foundation

struct Stack<Element> {
    private var items: [Element] = []
    
    func peek() -> Element {
        guard let topItem = items.last else {
            fatalError("This stack contains no items!")
        }
        
        return topItem
    }
    
    // Insertion and Deletion have O(1) time complexity
    mutating func insert(_ item: Element) {
        items.append(item)
    }
    
    mutating func remove() -> Element {
        items.removeLast()
    }
}

var carStack = Stack<String>()
carStack.insert("Audi")
carStack.insert("BMW")
carStack.insert("Mercedes")
carStack.insert("Volkswagen")

print("Starting Data Structure:", carStack)
print("Peek top:", carStack.peek())
print("Pop/Remove (FILO) item:", carStack.remove())
print("New Data Structure", carStack)
