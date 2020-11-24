//
//  UserAuthenticatorSDK.swift
//  UserAuthenticatorSDK
//
//  Created by Shashank Chandran on 24/11/2020.
//

import Foundation

public class UserAccountManager {
    
    private var isAuthorized: Bool
    
    public init(useremail: String, passcode: String) {
        isAuthorized = (ServerDatabaseCheck.email.contains(useremail) && ServerDatabaseCheck.pass.contains(passcode)) ? true : false
    }
    
    public func readSecret() -> Bool? {
        isAuthorized ? true : false
    }
}

private struct ServerDatabaseCheck {
    
    
//Run API's to authenticate the user
    static let email = ["user@email.com"]
    static let pass = ["user.password"]
    
}
