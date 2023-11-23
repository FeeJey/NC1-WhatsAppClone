//
//  ChatListView.swift
//  WhatsAppClone
//
//  Created by Firdavs Juraev on 15/11/23.
//

import SwiftUI

struct ChatListView: View {
    
    @State var viewModel = ListOfChats()
    @State var searcherbar: String = ""
    @Environment(\.colorScheme) var colorscheme
    
    @State private var addViewIsPresented: Bool = false
  //  @State private var if
    
    
    var body: some View {
        
        
        
        NavigationStack {
            ZStack (alignment: .leading){
                
                ScrollView {
                    VStack{
                        ForEach(searchResults) { item in
                            
                            NavigationLink {
                                ChatDetailView()
                            } label: {
                                HStack {
                                    if item.imageName.isEmpty {
                                        Image(systemName: "person.2.circle.fill")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 55, height: 55)
                                            .clipShape(Circle())
                                            .padding([.leading], 8)
                                    } else {
                                        Image(item.imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 55, height: 55)
                                            .clipShape(Circle())
                                            .padding([.leading], 8)
                                    }
                                    
                                    VStack {
                                        Text("\(item.name) \(item.surname)")
                                            .fontWeight(.bold)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            //.foregroundColor(colorscheme == .light ? .black : .white)
                                        Text(item.lastAction)
                                            .font(.footnote)
                                            .foregroundColor(.gray)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                    .multilineTextAlignment(.leading)
                                    .padding([.top, .bottom], 8)
                                    
                                    Text(item.date)
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                }
                            }
                            .foregroundColor(colorscheme == .light ? .black : .white)
                            .frame(maxHeight: 100)
                            .padding([.trailing], 8)
                            Divider()
                                .padding([.leading], 70)
                            
                        }
                        
                        Spacer()
                        
                        Button(action:{}) {
                            HStack{
                                
                                Image(systemName: "lock.fill")
                                
                                Spacer()
                                    .frame(width: 3)
                                
                                Text("Your personal messages are")
                                
                                Spacer()
                                    .frame(width: 3)
                                
                                Text("end-to-end encrypted")
                                    .foregroundColor(.blue)
                            }
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .padding()
                        }
                    }
                    
                }
                .navigationTitle("Chats")
                .toolbar{
                    
                    
                    ToolbarItem (placement: .cancellationAction) {
                        Button(action:{}) {
                            Image(systemName: "ellipsis.circle")
                        }
                    }
                    
                    ToolbarItem (placement: .confirmationAction){
                        Button(action:{}) {
                            Image(systemName: "camera")
                        }
                    }
                    
                    ToolbarItem (placement: .destructiveAction){
                        Button("Add", systemImage: "plus.circle.fill") {
                            addViewIsPresented.toggle()
                        }
                    }
                }
                .sheet(isPresented: $addViewIsPresented) {
                    addView()
                }
                .searchable(text: $searcherbar, prompt: "Search")
            }
        }
    }
    var searchResults: [Chat] {
        if searcherbar.isEmpty {
            return viewModel.chats
        } else {
            return viewModel.chats.filter { $0.name.lowercased().range(of:searcherbar.lowercased()) != nil || $0.surname.lowercased().range(of:searcherbar.lowercased()) != nil }
        }
    }
    
}

#Preview {
    ChatListView()
}




/*.toolbar{
 ToolbarItem(placement: .navigationBarTrailing) {
 Button(action: {}) {
 Image(systemName: "line.3.horizontal.decrease")
 }
 }
 */




















/*NavigationView {
 NavigationStack{
 NavigationStack {
 List {
 ForEach(viewModel.chats) { chat in
 NavigationLink {
 ChatDetailView()
 }
 label: {
 HStack {
 Image(systemName: chat.imageName)
 .imageScale(.large)
 
 Text(chat.name)
 .font(.title)
 Text(chat.surname)
 .font(.title)
 Text(chat.lastAction)
 .font(.subheadline)
 
 Spacer()
 Text(chat.date)
 }
 }
 
 }
 }
 }
 .navigationTitle("Chats")
 .toolbar {
 ToolbarItem (placement: .cancellationAction) {
 Button(action:{}) {
 Image(systemName: "ellipsis.circle")
 }
 }
 
 ToolbarItem (placement: .confirmationAction){
 Button(action:{}) {
 Image(systemName: "camera")
 }
 }
 
 ToolbarItem (placement: .destructiveAction){
 Button(action:{}) {
 Image(systemName: "plus.circle.fill")
 }
 }
 
 }
 }
 
 
 }
 }
 }
 
 
 #Preview {
 ChatListView()*/


/*
 VStack {
 HStack{
 Button(action:{}) {
 Image(systemName: "ellipsis.circle")
 }
 Spacer()
 
 Button(action:{}) {
 Image(systemName: "camera")
 }
 
 Button(action:{}) {
 Image(systemName: "plus.square.dashed")
 }
 }
 .padding()
 
 Text("Chats")
 .font(.title)
 
 
 }
 */
