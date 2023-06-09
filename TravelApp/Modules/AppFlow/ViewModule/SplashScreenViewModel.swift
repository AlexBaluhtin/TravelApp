//
//  SplashScreenViewModel.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 27.05.23.
//

import Combine
import Foundation
import Firebase

final class SplashScreenViewModel: ObservableObject {
  
  private let service = AuthServiceImp.shared
  private var cancellables = Set<AnyCancellable>()
  
  @Published var userSession: FirebaseAuth.User?
  
  init() {
    setupSubscribers()
  }
  
  func setupSubscribers() {
    service.$userSession.sink { [weak self] userSession in
      self?.userSession = userSession
    }
    .store(in: &cancellables)
  }
}
