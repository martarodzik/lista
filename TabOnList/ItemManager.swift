//
//  ItemManager.swift
//  TabOnList
//
//  Created by appcamp on 19/07/15.
//  Copyright (c) 2015 marta. All rights reserved.
//

import Foundation

var ItemsMgr: ItemsManager = ItemsManager ()

struct item {
    var name = ""
    var details = ""
    
}

class ItemsManager: NSObject{

    var items = [item]() // tablica itemów, () - pusta inicjalizacja
    
    func addItem(name: String, details: String){
    items.append(item(name: name, details: details))
    }
    
}