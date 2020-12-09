//
//  ViewController.swift
//  Simple SwiftUI
//
//  Created by muhammad luthfi farizqi on 09/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("bg")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
            
            VStack(spacing:20){
                Logo ()
                FormBox()
            }
            .padding(.all,30)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}

struct Logo : View {
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Image("swift")
                .resizable()
                .frame(width:80, height:80)
                .background(Color("warnaku"))
                .foregroundColor(Color.white)
                .padding()
                .background(Color("warnaku"))
                .cornerRadius(20)
            Text("Hello SwiftUI")
                .font(.headline)
                .foregroundColor(Color.white)
        }
    }
}

struct FormBox : View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("Username")
                .font(.callout)
                .bold()
            
            TextField("Username...", text:$username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password")
                .font(.callout)
                .bold()
            
            SecureField("Password...", text:$password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {print("CLik Button")}) {
                HStack {
                    Text("Sign In")
                    Spacer()
                }
            }
            .padding()
            .background(Color.black)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            
        }
        .padding(.all,30)
        .background(Color.orange)
        .cornerRadius(10)
    }
    
}
