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
            
            Image("splashLogo")
              .resizable()
              .scaledToFill()
              .frame(width: 80, height: 80)
            
            Text("Welcome.\nThis is travel app.")
              .font(.system(size: 32, weight: .bold, design: .rounded))
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
            .frame(height: 56)
            .frame(maxWidth: .infinity)
            .background(Color("mainAccent"))
            .cornerRadius(28)
            .buttonStyle(.plain)
            .foregroundColor(.white)
            .padding(.leading, 20)
            .padding(.trailing, 20)
            
            NavigationLink(destination: SignInView(), label: {
              Text("Already on Travel? Log In")
                .font(.system(size: 13, weight: .regular, design: .rounded))
              
            })
            .frame(height: 52)
            .frame(maxWidth: .infinity)
            .cornerRadius(4)
            .buttonStyle(.plain)
            .foregroundColor(.black)
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
