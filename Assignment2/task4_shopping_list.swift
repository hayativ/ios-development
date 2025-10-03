import Foundation

var shoppingList: [String] = []
//Develops a simple shopping list application
func shoppingListManager() {
    while true {
        print("1. Add item")
        print("2. Remove item")
        print("3. Display item")
        print("4. Exit")
        print(terminator: "")
        
        if let choice = readLine() {
            switch choice {
            case "1":
                print(terminator: "")
                if let item = readLine() {
                    addItem(item)
                }
            case "2":
                print(terminator: "")
                if let item = readLine() {
                    removeItem(item)
                }
            case "3":
                displayList()
            case "4":
                print("Exit")
                return
            default:
                print("Error")
            }
        }
    }
}

func addItem(_ item: String) {
    shoppingList.append(item)
}

func removeItem(_ item: String) {
    if let index = shoppingList.firstIndex(of: item) {
        shoppingList.remove(at: index)
    } else {
        print("\(item) Error. Not found")
    }
}

func displayList() { print("Shopping list: \(shoppingList)") }
