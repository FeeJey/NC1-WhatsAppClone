//
//  ChatDetailView.swift
//  WhatsAppClone
//
//  Created by Firdavs Juraev on 17/11/23.
//

import SwiftUI

struct ChatDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
                .navigationBarBackButtonHidden()
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {dismiss()}, label: {
                            Image(systemName: "chevron.left")
                        })
                    }
                }
        }
    }
        //.foregroundColor(.gray)
}


#Preview {
    ChatDetailView()
}
