//
//  File.swift
//  TableView_3
//
//  Created by Nguyen Duc Huy on 5/31/21.
//  Copyright © 2021 Nguyen Duc Huy. All rights reserved.
//

import Foundation

class Food {
    var ID:Int
    var IMG:String
    var NAME:String
    var PRICE:Int

    init(id:Int, img:String, name:String, price:Int) {
        self.ID = id
        self.IMG = img
        self.PRICE = price
        self.NAME = name
    }
}

