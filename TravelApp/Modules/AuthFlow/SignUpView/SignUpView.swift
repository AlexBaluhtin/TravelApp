//
//  SignUpView.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 14.04.23.
//

import SwiftUI

struct SignUpView: View {
  @Environment(\.dismiss) var dismiss
  
  @ObservedObject var viewModel = SignUpViewModel(authService: AuthServiceImp())
  
  var body: some View {
    NavigationView {
      ZStack {
        VStack(alignment: .leading) {
          
          // name
          TextField("Type your name ...", text: $viewModel.username)
            .autocapitalization(.none)
            .padding(12)
            .background(Color("fields"))
            .foregroundColor(.black)
            .cornerRadius(6)
          
          // email
          TextField("Type your email ...", text: $viewModel.email)
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
          
          Button(action: {
            print("pressed")
            Task {
              do {
                try await viewModel.register()
              } catch {
                print("Error registration: \(error.localizedDescription)")
              }
            }
            
          })
          {
            Text("Sign Up")
          }
          .frame(height: 56)
          .frame(maxWidth: .infinity)
          .background(Color("mainAccent"))
          .cornerRadius(28)
          .padding(.top, 30)
          .buttonStyle(.plain)
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
