//
//  SplashScreenView.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 14.04.23.
//

import FirebaseAuth
import SwiftUI

struct SplashScreenView: View {
  @State private var isActive = false
  @State private var opacity = 0.1
  
  @StateObject var viewModel = SplashScreenViewModel()
  
  @ObservedObject var authService = AuthServiceImp()
  
  var body: some View {
    if isActive {
      Group {
        if viewModel.userSession == nil {
          MainView()
        } else {
          MainTabView()
        }
      }
    } else {
      ZStack {
        VStack {
          
          Image("splashLogo")
            .aspectRatio(contentMode: .fill)
            .frame(width: 80, height: 80)
        }
        .opacity(opacity)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .onAppear {
          withAnimation(.easeIn(duration: 1.2)) {
            self.opacity = 1.0
          }
        }
        
        
      }
      .onAppear {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
          self.isActive = true
        }
      }
      .background(Color.white)
    }
  }
}

struct SplashScreenView_Previews: PreviewProvider {
  static var previews: some View {
    SplashScreenView(authService: AuthServiceImp())
  }
}
