//
//  MatchTestModel.swift
//  hidenseek
//
//  Created by juanita aguilar on 6/15/20.
//  Copyright © 2020 none. All rights reserved.
//

import Foundation

class MatchTestModel: Codable{
    
    //var created:Date? //= Date()
    var name:String?
    var matchPassword:String?
    var matchType:String?
    var countTime:String?
    var seekTime:String?
    
    init(name:String?, matchPassword:String?,matchType:String?,countTime:String?, seekTime:String?) {
    
             self.name = name
             self.matchPassword = matchPassword
             self.matchType = matchType
             self.countTime = countTime
             self.seekTime = seekTime
         }
    
}

