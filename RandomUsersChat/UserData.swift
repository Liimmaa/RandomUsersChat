//
//  UserData.swift
//  RandomUsersChat
//
//  Created by Chioma Amanda Mmegwa  on 30/08/2022.
//

import UIKit

@MainActor
class UserData: ObservableObject {
    @Published var users: [User] = []
    
    init() {
        Task {
            await loadUsers()
        }
    }
    
   func loadUsers() async {
            do {
                let users = try await UserFetchingClient.getUsers()
                self.users = users
            }
            catch {
                print(error)
            }
    }
}
