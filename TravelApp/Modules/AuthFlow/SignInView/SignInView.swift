//
//  SignInView.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 14.04.23.
//

import SwiftUI

struct SignInView: View {
  @Environment(\.dismiss) var dismiss
  
  @State private var email: String = ""
  @State private var password: String = ""
  
  var body: some View {
    NavigationView {
      ZStack {
        VStack(alignment: .leading) {
          Text("Email")
            .foregroundColor(.black)
          TextField("Type your email ...", text: $email)
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
            Text("Sign In")
          }
          .frame(height: 52)
          .frame(maxWidth: .infinity)
          .background(Color.blue)
          .cornerRadius(4)
          .buttonStyle(BlueButtonStyle())
          .padding(.top, 12)
          .foregroundColor(.white)
        }
        .background(Color.white)
        .padding(.top, 12)
        .padding(.leading, 24)
        .padding(.trailing, 24)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
      }
      .background(Color.white)
    }
    .navigationBarTitleDisplayMode(.large)
    .navigationTitle("Login with email")
    
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

struct SignInView_Previews: PreviewProvider {
  static var previews: some View {
    SignInView()
  }
}
