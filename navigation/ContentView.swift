//
//  ContentView.swift
//  navigation
//
//  Created by Subhransu on 30/09/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Login Screen")
                NavigationLink("Go To Home"){
                    HomeView()
                }
                
                NavigationLink {
                    HomeView()
                } label: {
                    Text("Home")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(12)
                }
                
                NavigationLink(){
                    Setting()
                }label: {
                    Text("Settings")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(12)
                }
                
                
                NavigationLink(){
                    Profile()
                }label:{
                    Text("Profile")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red)
                        .foregroundStyle(.white)
                        .cornerRadius(12)
                }
            }
            
            .toolbar(.hidden, for: .navigationBar)

        }
    }
}

#Preview {
    ContentView()
}
