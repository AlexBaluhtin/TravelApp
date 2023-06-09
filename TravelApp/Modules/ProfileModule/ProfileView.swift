//
//  ProfileView.swift
//  TravelApp
//
//  Created by Alex Balukhtsin on 27.05.23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
      VStack {
        // header
        HStack {
          // image
          VStack {
            Image("mockUserImage")
              .resizable()
              .scaledToFill()
              .frame(width: 80, height: 80)
              .clipShape(Circle())
          }
          
          // bio
          VStack(alignment: .leading) {
            // name
            Text("Alex Baluhtin")
              .padding(.horizontal)
              .padding(.top, 16)
            
            // adress
            HStack {
              Image(systemName: "mappin.and.ellipse")
                .foregroundColor(Color("mainAccent"))
              Text("Poland, Warszawa")
                .foregroundColor(Color("darkBlue"))
                .font(.system(size: 15, weight: .regular, design: .rounded))
            }
            .padding(.top, 8)
            .padding(.bottom, 8)
            .padding(.horizontal)
            
            // mail
            HStack {
              Image(systemName: "envelope.fill")
                .foregroundColor(Color("mainAccent"))
              Text("Test@gmailcom")
                .foregroundColor(Color("darkBlue"))
                .font(.system(size: 15, weight: .regular, design: .rounded))
            }
            .padding(.horizontal)
          }
          
          Spacer()
        }
        .padding(.horizontal)
        
        Spacer()
        // settings
        Button(action: {
          AuthServiceImp.shared.logout()
          print("pressed")
        })
        {
          Text("Sign Out")
            .font(.system(size: 17, weight: .regular, design: .rounded))
        }
        .frame(height: 46)
        .frame(maxWidth: .infinity)
        .background(Color("grey"))
        .cornerRadius(16)
        .padding(.top, 30)
        .buttonStyle(.plain)
        .foregroundColor(Color("mainAccent"))
      }
      .padding(.bottom, 30)
      .padding(.horizontal)
      
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
