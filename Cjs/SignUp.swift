//
//  Signup.swift
//  CJs
//
//  Created by Ahmed Yussufu on 2022-04-19.
//

import SwiftUI

struct Signup: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    
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
                    Text("Sign Up")
                        .font(.title)
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .kerning(1.9)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    // first and last name field
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("Your Name")
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                            .kerning(1.2)
                        
                        TextField("John Doe", text: $name)
                        
                        //Increasing font size and changing text color..
                            .font(.system(size: 20, weight: .regular))
                            .foregroundColor(.black)
                            .padding(.top, 5)
                         Divider()
                        
                        
                    })
                    .padding(.top, 12)
                    
                    
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
                    .padding(.top, 12)
                    
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
                    .padding(.top, 12)
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        Text("Confirm Password")
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                            .kerning(1.2)
                        
                        SecureField("12345", text: $confirmPassword)
                        
                        //Increasing font size and changing text color..
                            .font(.system(size: 20, weight: .regular))
                            .foregroundColor(.black)
                            .padding(.top, 5)
                         Divider()
                        
                        
                    })
                    .padding(.top, 12)
                
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
                Text("Already a member?")
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                
                Button(action: {}, label: {
                    Text("Sign in")
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .kerning(1.2)
                })
            }
            ,alignment: .bottom
        )
      
     
    }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}
