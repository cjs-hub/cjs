//
//  Login.swift
//  CJs
//
//  Created by Ahmed Yussufu on 2022-04-16.
//

import SwiftUI

struct Login: View {
    @State var email = ""
    @State var password = ""
    
    @State var showSignUp = false
 
    var body: some View {
        
        
        ZStack {
            Color(red: 0.655, green:0.706, blue: 0.620)
      
            VStack {
                VStack {
                    Text("Welcome!")
                        .font(.title)
                        .fontWeight(.semibold)
                        .kerning(1.9)
                        .frame(maxWidth: .infinity, alignment: .center)
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                    Text("Sign In")
                        .font(.title)
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .kerning(1.9)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    // Email and password ...
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("Email")
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                            .kerning(1.2)
                        
                        TextField("johndoe@gmail.com", text: $email)
                        
                        //Increasing font size and changing text color..
                            .font(.system(size: 20, weight: .regular))
                            .foregroundColor(.black)
                            .padding(.top, 5)
                         Divider()
                        
                        
                    })
                    .padding(.top, 25)
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("Password")
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                            .kerning(1.2)
                        
                        SecureField("12345", text: $password)
                        
                        //Increasing font size and changing text color..
                            .font(.system(size: 20, weight: .regular))
                            .foregroundColor(.black)
                            .padding(.top, 5)
                         Divider()
                        
                        
                    })
                    .padding(.top, 20)
                    
                    
                    // forgot password...
                    Button(action: {}, label: {
                        Text("Forgot Password?")
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                            .kerning(1.2)
                    })
               
                    
                    // This will reduce the use of unwanted hstack and spacers.
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.top, 10)
                    
                    // next button
                    Button(action: {}, label: {
                        Image(systemName: "arrow.right")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                            .background(.black)
                            .clipShape(Circle())
                        
                        // Shadow...
                            .shadow(color: Color("lightBlue").opacity(0.6), radius: 5, x: 0, y: 0)
                    })
                    
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 10)
                }
                
                
                .padding()
                
            }
            
            
        }
        .ignoresSafeArea()
        .overlay(
            
            HStack{
                Text("Not a member yet?")
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                
                Button(action: {}, label: {
                    Text("Sign up")
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .kerning(1.2)
                })
            }
            ,alignment: .bottom
        )
      
     
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
            
            
            
    }
}

extension Color {
    static let oldPrimaryColor = Color(UIColor.systemIndigo)
    static let blueishColor = Color("blueish")
    
}





    
