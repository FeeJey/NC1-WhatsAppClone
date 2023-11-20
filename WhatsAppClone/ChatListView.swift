//
//  ChatListView.swift
//  WhatsAppClone
//
//  Created by Firdavs Juraev on 15/11/23.
//

import SwiftUI

struct ChatListView: View {
    
    var viewModel = ListOfChats()
    @State var searcherbar: String = ""
    
    var body: some View {
        
        NavigationStack {
            ZStack (alignment: .leading){
                
                ScrollView {
                    
                    ForEach(viewModel.chats) { item in
                        HStack {
                            if item.imageName.isEmpty {
                                Image(systemName: "person.2.circle.fill")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                            } else {
                                Image(item.imageName)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                            }
                            
                            VStack {
                                Text("\(item.name) \(item.surname)")
                                    .fontWeight(.bold)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text(item.lastAction)
                                    .font(.subheadline)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            .multilineTextAlignment(.leading)
                            Spacer()
                            Text(item.date)
                        }
                        .frame(maxHeight: 70)
                        Divider()
                    }
                    .padding()
                    
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
                        Button(action:{}) {
                            Image(systemName: "plus.circle.fill")
                        }
                    }
                }
                .searchable(text: $searcherbar, prompt: "Search")
            }
        }
    }
}

#Preview {
    ChatListView()
}



        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
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
