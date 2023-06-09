//
//  AuthService.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 19.04.23.
//

import Foundation
import FirebaseAuth
import Combine

protocol AuthService {
  func signUp(email: String, password: String, userName: String) async throws
  func signIn(_ email: String, _ password: String) async throws
  func delete() async throws
  func logout() async throws
}

final class AuthServiceImp: AuthService, ObservableObject {
  
  static let shared = AuthServiceImp()
  
  @Published var userSession: FirebaseAuth.User?
  
  init() {
    self.userSession = Auth.auth().currentUser
  }
  
  @MainActor
  func signUp(email: String, password: String, userName: String) async throws {
    do {
      let result = try await Auth.auth().createUser(withEmail: email, password: password)
      self.userSession = result.user
    } catch {
      throw error
    }
  }
  
  @MainActor
  func signIn(_ email: String, _ password: String) async throws {
    do {
      let result = try await Auth.auth().signIn(withEmail: email, password: password)
      self.userSession = result.user
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
  
  func logout(){
    try? Auth.auth().signOut()
    self.userSession = nil
  }
}
