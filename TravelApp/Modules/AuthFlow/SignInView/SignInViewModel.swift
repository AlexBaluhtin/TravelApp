//
//  SignInViewModel.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 1.05.23.
//

import Foundation
import Combine

protocol SignInViewModelProtocol: ObservableObject {
  // Input
  var username: String { get set }
  var password: String { get set }
  
//  // Output
//  var isUsernameValid: Bool { get }
//  var isPasswordValid: Bool { get }
//  var isFormValid: Bool { get }
  
  // Actions
  func signIn() async throws
}

class SignInViewModel: SignInViewModelProtocol {
  // Input
  @Published var username: String = ""
  @Published var password: String = ""
  
//  // Output
//  @Published var isUsernameValid: Bool = false
//  @Published var isPasswordValid: Bool = false
//  @Published var isFormValid: Bool = false
  
  private var cancellables = Set<AnyCancellable>()
  
  var authService: AuthServiceImp
  
  init(authService: AuthServiceImp) {
    self.authService = authService
  }
  
  @MainActor
  func signIn() async throws {
    // Implement signIn logic here
    try await authService.signIn(username, password)
  }
}
