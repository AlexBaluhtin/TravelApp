//
//  SignUpViewModel.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 20.04.23.
//

import Foundation
import Combine

protocol SignUpViewModelProtocol: ObservableObject {
  // Input
  var username: String { get set }
  var email: String { get set }
  var password: String { get set }
  
  // Actions
  func register() async throws
}


final class SignUpViewModel: SignUpViewModelProtocol {
  // Input
  @Published var username: String = ""
  @Published var email: String = ""
  @Published var password: String = ""
  
  private var cancellables = Set<AnyCancellable>()
  
  let authService: AuthServiceImp
  
  init(authService: AuthServiceImp) {
    self.authService = authService
  }
  
  @MainActor
  func register() async throws {
    try await authService.signUp(email: email, password: password, userName: username)
  }
}
