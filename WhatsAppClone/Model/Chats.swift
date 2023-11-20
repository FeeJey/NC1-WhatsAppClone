//
//  Chats.swift
//  WhatsAppClone
//
//  Created by Firdavs Juraev on 16/11/23.
//

import Foundation
import SwiftUI

struct Chat: Identifiable {
    
    var id: UUID = UUID()
    
    
    var name: String
    var surname: String
    
    var lastAction: String = ""
    var date: String = ""
    var imageName: String = ""
}
