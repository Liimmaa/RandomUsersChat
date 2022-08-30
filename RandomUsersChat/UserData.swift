//
//  UserData.swift
//  RandomUsersChat
//
//  Created by Chioma Amanda Mmegwa  on 30/08/2022.
//

import UIKit

class UserData {
    var users: String = ""
    
    init() {
        Task {
            do {
                let users = try await UserFetchingClient.getUsers()
                self.users = users
            }
            catch {
                print(error)
            }
        }
    }
}
