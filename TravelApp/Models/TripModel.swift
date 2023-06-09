//
//  TripModel.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 2.05.23.
//

import Foundation

struct TripModel {
  var nameTrip: String
  var descriptionTrip: String
  
  init(nameTrip: String, descriptionTrip: String) {
    self.nameTrip = nameTrip
    self.descriptionTrip = descriptionTrip
  }
}
