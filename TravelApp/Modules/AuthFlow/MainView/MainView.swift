//
//  MainView.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 2.04.23.
//

import SwiftUI

struct MainView: View {
  var body: some View {
    NavigationView {
      ZStack {
        VStack {
          VStack(alignment: .leading,
                 spacing: 20) {
            
            Image("M")
              .aspectRatio(contentMode: .fill)
              .frame(width: 60, height: 60)
            
            Text("Welcome.\nThis is travel app.")
              .font(Font(.init(.label, size: 32)))
              .multilineTextAlignment(.leading)
              .foregroundColor(.black)
            
          }
                 .padding(.top, 124)
                 .padding(.leading, 24)
                 .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
          
          Spacer()
          
          VStack(alignment: .center,
                 spacing: 12) {
            NavigationLink(destination: SignUpView(), label: {
              Text("Create an account")
            })
            .frame(height: 52)
            .frame(maxWidth: .infinity)
            .background(Color.black)
            .cornerRadius(4)
            .buttonStyle(.plain)
            .foregroundColor(.white)
            .padding(.leading, 24)
            .padding(.trailing, 24)
            
            NavigationLink(destination: SignInView(), label: {
              Text("Login with Email")
              
            })
            .frame(height: 52)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(4)
            .buttonStyle(.plain)
            .foregroundColor(.white)
            .padding(.leading, 24)
            .padding(.trailing, 24)
          }
          .padding(.bottom)
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
          
          
        }
      }
      .background(Color.white)
    }
  }
}



struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
