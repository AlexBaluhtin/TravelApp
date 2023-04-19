//
//  SignUpView.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 14.04.23.
//

import SwiftUI

struct SignUpView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var login: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
          ZStack {
            VStack(alignment: .leading) {
              Text("Email")
                .foregroundColor(.black)
              TextField("Type your login ...", text: $login)
                .foregroundColor(.black)
              Divider()
              
              Text("Password")
                .foregroundColor(.black)
              SecureField("Type password ...", text: $password)
                .foregroundColor(.black)
              Divider()
              
              //Spacer()
              
              Button(action: {
                print("pressed")})
              {
                Text("Registration")
              }
              .frame(height: 52)
              .frame(maxWidth: .infinity)
              .background(Color.blue)
              .cornerRadius(4)
              .buttonStyle(BlueButtonStyle())
              .padding(.top, 12)
              .foregroundColor(.white)
            }
            .padding(.top, 12)
            .padding(.leading, 24)
            .padding(.trailing, 24)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
          }
          .background(Color.white)
        }
        .navigationBarTitleDisplayMode(.large)
        .navigationTitle("Sign Up")
        .background(NavigationConfigurator { nc in
          nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.black]
        })
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    self.dismiss()
                } label: {
                    Image("backButton")
                }
            }
        }
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
