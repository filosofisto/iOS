//
//  ItemStore.swift
//  LootLogger
//
//  Created by Eduardo Ribeiro Silva on 06/05/2023.
//

import UIKit

class ItemStore {
    
    var allItems = [Item]()
    
//    init() {
//        for _ in 0..<5 {
//            createItem()
//        }
//    }
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        
        return newItem
    }
    
    func removeItem(_ item: Item) {
        if let index = allItems.firstIndex(of: item) {
            allItems.remove(at: index)
        }
    }
    
    func moveItem(from fromIndex: Int, to toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        let movedItem = allItems[fromIndex]
        allItems.remove(at: fromIndex)
        allItems.insert(movedItem, at: toIndex)
    }
}
