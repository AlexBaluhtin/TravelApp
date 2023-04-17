//
//  UserModel.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 17.04.23.
//

import Foundation

struct User: Identifiable {
  var id = UUID()
  var firstName = String()
  var lastName = String()
  var email = String()
}
