//
//  MainTabView.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 27.05.23.
//

import SwiftUI

struct MainTabView: View {
  @State private var selection = 5
  
    var body: some View {
      
      TabView {
        TravelsView()
          .font(.system(size: 30, weight: .bold, design: .rounded))
          .tabItem {
            Image(systemName: "suitcase")
            Text("Travel")
          }
        
        Text("Flights")
          .font(.system(size: 30, weight: .bold, design: .rounded))
          .tabItem {
            Image(systemName: "airplane")
            Text("Flights")
          }
        
        Text("Chatbot")
          .font(.system(size: 30, weight: .bold, design: .rounded))
          .tabItem {
            Image(systemName: "paperplane.fill")
            Text("Chatbot")
          }
        
        Text("Hotels")
          .font(.system(size: 30, weight: .bold, design: .rounded))
          .tabItem {
            Image(systemName: "bed.double.fill")
            Text("Hotels")
          }
        
        ProfileView()
          .tabItem {
            Image(systemName: "person.crop.circle")
            Text("Profile")
          }
      }
      .accentColor(Color("mainAccent"))
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
