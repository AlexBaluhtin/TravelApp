//
//  SignInView.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 14.04.23.
//

import SwiftUI

struct SignInView: View {
  @Environment(\.dismiss) var dismiss
  
  @ObservedObject var viewModel = SignInViewModel(authService: AuthServiceImp.shared)
  
  var body: some View {
    NavigationView {
      ZStack {
        VStack(alignment: .leading) {
          
          // login
          TextField("Type your email ...", text: $viewModel.username)
            .autocapitalization(.none)
            .padding(12)
            .background(Color("fields"))
            .foregroundColor(.black)
            .cornerRadius(6)
          
          // password
          SecureField("Type password ...", text: $viewModel.password)
            .foregroundColor(.black)
            .autocapitalization(.none)
            .padding(12)
            .background(Color("fields"))
            .foregroundColor(.black)
            .cornerRadius(6)
          
          // sign in
          Button(action: {
            print("pressed")
            Task {
              do {
                try await viewModel.signIn()
              } catch {
                print("Error registration: \(error.localizedDescription)")
              }
            }
          })
          {
            Text("Sign In")
              .font(.system(size: 20, weight: .regular, design: .rounded))
          }
          .frame(height: 56)
          .frame(maxWidth: .infinity)
          .background(Color("mainAccent"))
          .cornerRadius(28)
          .padding(.top, 30)
          .buttonStyle(.plain)
          .foregroundColor(.white)
          
          // forgot password
          
          Button(action: {
            print("pressed")
          })
          {
            Text("Forgot your password?")
              .font(.system(size: 13, weight: .regular, design: .rounded))
          }
          .frame(maxWidth: .infinity)
          .padding(.top, 16)
          .foregroundColor(.black)
          
          
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
    .navigationTitle("Sign in")
    
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
