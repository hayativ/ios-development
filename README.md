Assignment 3 - Shopping Cart
   - Why did you choose class for ShoppingCart?
  ShoppingCart was chosen as a class because it needs to have an identity 
  and a shared state that can be modified and accessed from different parts of the program. 
  When the shopping cart is passed to a function, we want changes in that function to affect the original shopping cart. 
  For example, when adding a new item in the modifyCart(_:) function, the original shopping cart is actually changed because classes are reference types.
  If ShoppingCart were a struct, its copy would be changed separately and the changes would not affect the original.
  
   - Why did you choose struct for Product and Order?
   Products and orders do not require uniqueness or shared state. 
   They are simple data objects that can be copied without side effects. 
   Each product is simply a set of characteristics, and copying a new instance does not cause confusion. 
   Order is also created as a struct because it is a snapshot of the shopping cart's state at the time of checkout. 
   Even if the cart is later cleared, the order data remains unchanged - this is a classic example of meaningful type behavior.
   
   - Explain one example where reference semantics matter in your code
   When the modifyCart(_:) function adds an item to the cart, the original cart object also changes. 
   This demonstrates that classes are passed by reference.
   
   - Explain one example where value semantics matter in your code
   When we create two instances of CartItem, item1 and item2, and change the quantity in the second one, the first one remains unchanged. 
   This proves that structures in Swift are passed by value.
   
   - What challenges did you face and how did you solve them?
   The main challenge was compilation errors related to top-level expressions and name conflicts. 
   The solution was to use the testShoppingSystem() function and the main.swift file as the entry point, 
   as well as to ensure that each structure and class was defined only once in the project. 
   After that, the program compiled successfully and ran without errors.
