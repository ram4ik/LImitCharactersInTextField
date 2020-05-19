//
//  TextFieldManager.swift
//  LImitCharactersInTextField
//
//  Created by ramil on 19.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI
import AudioToolbox

class TextFieldManager: ObservableObject {
    
    let charactersLimit = 4
    
    @Published var userInput = "" {
        
        didSet {
            if userInput.count > charactersLimit {
                userInput = String(userInput.prefix(charactersLimit))
                
                AudioServicesPlaySystemSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                    return
                }
            }
        }
    }
    
    
}
