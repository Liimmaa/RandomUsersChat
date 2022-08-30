//
//  ContentView.swift
//  RandomUsersChat
//
//  Created by Chioma Amanda Mmegwa  on 30/08/2022.
//

import SwiftUI

struct UsersView: View {
    @StateObject var userData = UserData()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
