//
//  SplashScreenView.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 14.04.23.
//

import SwiftUI

struct SplashScreenView: View {
  @State private var isActive = false
  @State private var opacity = 0.1
  var body: some View {
    if isActive {
      MainView()
    } else {
      ZStack {
        VStack(alignment: .leading,
               spacing: 20) {
          
          Image("M")
            .aspectRatio(contentMode: .fill)
            .frame(width: 60, height: 60)
          
          Text("Welcome.\nThis is travel app.")
            .font(Font(.init(.label, size: 32)))
            .multilineTextAlignment(.leading)
          
          
        }
               .opacity(opacity)
               .padding(.top, 124)
               .padding(.leading, 24)
               .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
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
        SplashScreenView()
    }
}
