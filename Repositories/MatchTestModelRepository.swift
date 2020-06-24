//The Repository for the MatchTestModel
//  MatchTestModelRepository.swift
//  hidenseek
//
//  Created by juanita aguilar on 6/23/20.
//  Copyright © 2020 none. All rights reserved.
//

import Foundation

class MatchTestModelRepository{
    
    var matchTestModels = [MatchTestModel]()
    
    
    //return all of the match models in the array
    func getAllMatchTestModels() -> [MatchTestModel]{
        self.matchTestModels.append(Constants.MATCHTESTMODEL1)
        return matchTestModels
    }
    
    
    
}
