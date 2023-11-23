//
//  cameraView.swift
//  WhatsAppClone
//
//  Created by Firdavs Juraev on 21/11/23.
//

import SwiftUI

struct cameraView: View {
    
    @Binding var selectedImage: UIImage?
    
    @State var isImagePickerPresented = false
    @State var isVideoRecorderPresented = false
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

