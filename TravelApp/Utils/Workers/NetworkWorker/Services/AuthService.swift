//
//  AuthService.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 19.04.23.
//

import Foundation
import FirebaseAuth

protocol AuthService {
  
  typealias Handler<T> = (Result<T, Error>) -> ()
  
  func signUp(_ email: String, _ password: String) async throws -> FirebaseAuth.User
  
  func signIn(_ email: String, _ password: String) async throws -> FirebaseAuth.User
  
  func delete() async throws
  
  func logout() async throws
  
}

class AuthServiceImp: AuthService {
  
  func signUp(_ email: String, _ password: String) async throws -> FirebaseAuth.User {
    do {
      let result = try await Auth.auth().createUser(withEmail: email, password: password)
      return result.user
    } catch {
      throw error
    }
  }
  
  func signIn(_ email: String, _ password: String) async throws -> FirebaseAuth.User {
    do {
      let result = try await Auth.auth().signIn(withEmail: email, password: password)
      return result.user
    } catch {
      throw error
    }
  }
  
  func delete() async throws {
    guard let user = Auth.auth().currentUser else { return }
    
    do {
      try await user.delete()
    } catch {
      throw error
    }
  }
  
  func logout() async throws {
    do {
      try await Auth.auth().signOut()
    } catch {
      throw error
    }
  }
}
