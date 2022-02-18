import Foundation

// A queue is a data structure with a "first in, first out" property. An item can only be removed form a queue after all the items added before it are removed first

struct Queue<Element> {
    private var items: [Element] = []
    
    func peek() -> Element {
        guard let firstItem = items.first else {
            fatalError("This queue is empty!")
        }
        
        return firstItem
    }
    
    mutating func insert(_ item: Element) {
        items.append(item)
    }
    
    mutating func remove() -> Element {
        items.removeFirst()
    }
}

var carQueue = Queue<String>()
carQueue.insert("Audi")
carQueue.insert("BMW")
carQueue.insert("Mercedes")
carQueue.insert("Porsche")

print("Starting Data Structure:", carQueue)
print("Peek top:", carQueue.peek())
print("Pop/Remove (FIFO) item:", carQueue.remove())
print("New Data Structure", carQueue)
