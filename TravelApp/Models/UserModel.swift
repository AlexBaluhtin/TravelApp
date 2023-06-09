//
//  UserModel.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 17.04.23.
//

import Foundation
import FirebaseAuth

struct UserModel {
  let uid: String
  let email: String?
  
  init(user: User) {
    self.uid = user.uid
    self.email = user.email
  }
}
