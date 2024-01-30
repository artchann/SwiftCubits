//
//  SettingsViewModel.swift
//  SwiftCubits
//
//  Created by Arthur Chan on 1/27/24.
//

import Foundation

@MainActor
final class ProfileViewModel: ObservableObject{
    
    @Published private(set) var user: DBUser? = nil // only allow modification within this file "private(set)" && Optional type w/ default nil
    
    //TODO: Replace location of loadCurrUser -- currently NOT available
    func loadCurrentUser() async throws{
        let authDataResult = try AuthManager.shared.getAuthUser()
        self.user = try await UserManager.shared.getUser(userId: authDataResult.uid)
    }
    
    func signOut() throws {
        try AuthManager.shared.signOut()
    }
}
