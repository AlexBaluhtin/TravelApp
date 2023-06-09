//
//  TravelsView.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 2.06.23.
//

import SwiftUI

struct TravelsView: View {
    var body: some View {
      NavigationView {
          .navigationBarTitle("Travel")
      }
      .navigationBarBackButtonHidden()
    }
}

struct TravelsView_Previews: PreviewProvider {
    static var previews: some View {
        TravelsView()
    }
}
