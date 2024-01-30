//
//  SessionManager.swift
//  SwiftCubits
//
//  Created by Arthur Chan on 1/25/24.
//

import Foundation
//import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreSwift

//struct AuthDataResultModel{
//    let uid: String
//    let email: String? //optional string
//    let photoUrl: String? //optional string
//}

struct DBUser{
    let userId: String
    let email: String
    let dataCreated: Date?
}

final class UserManager {
    static let shared = UserManager() //TODO: another singleton here, can fix low priority
    private init() {}
    
    func createNewUser(auth: AuthDataResultModel) async throws{
        var userData: [String:Any] = [
            "user_id" : auth.uid,
            "date_created" : Timestamp(),
            "email" : auth.email // MARK: Ignore error, email will always be implicitly cast to String
        
        ]
        try await Firestore.firestore().collection("users").document(auth.uid).setData(userData, merge: false)
    }
    func getUser(userId: String) async throws -> DBUser {
        let snapshot = try await Firestore.firestore().collection("users").document(userId).getDocument()
        
        guard let data = snapshot.data(), let userId = data["user_id"] as? String, let email = data["email"] as? String else { // assign data to dictionary from .data(), type cast userId and email to string
            // MARK: Temporary fix to DB return; guard to short-circuit code...
            throw URLError(.badServerResponse)
        }

        //MARK: Assign user properties here, add as needed
        //let email = data["email"] as? String
        let dateCreated = data["date_created"] as? Date // MARK: Swift natively supports its own recast algorithm from FB to NSDate
        //****************************
        return DBUser(userId: userId, email: email, dataCreated: dateCreated)
    }
}
