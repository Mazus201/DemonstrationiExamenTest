//
//  ContentView.swift
//  TestDE
//
//  Created by Student on 28.04.2022.
//

import SwiftUI

var btnAuthBack = false

struct ContentView: View {
    @State var btnRegistrate = false
    @State var btnAuth = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("Background1")
                    .resizable()
                VStack{
                    Spacer()
                    Image("LogoMini")
                        .padding(.bottom, -100)
                        
                    VStack(alignment: .center, spacing: 5){
                        Text("ПРИВЕТ")
                            .fontWeight(.bold)
                            .font(.system(size: 27))
                            .padding(.top, -10)
                        Text("Наслаждайся отборочными.")
                            .font(.system(size: 20))
                        Text("Будь внимателен.")
                            .font(.system(size: 20))
                        Text("Делай хорошо.")
                            .font(.system(size: 20))
                    }
                    
                    Spacer()
                    
                    Button(action:{
                        btnAuth.toggle()
                    })
                    {
                        Text("Войти в аккаунт")
                            .padding(.horizontal, 100)
                            .padding(.vertical, 20)
                            .background(Color("Green"))
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: AuthPage().navigationBarHidden(true), isActive: $btnAuth){
                        
                    }
                    
                    HStack{
                        Text("Еще нет аккаунта?")
                        Button(action:{
                            btnRegistrate.toggle()
                        })
                        {
                            Text("Зарегистрируйтесь")
                                .fontWeight(.medium)
                        }
                        
                        NavigationLink(destination: RegistrationPage().navigationBarHidden(true), isActive: $btnRegistrate){
                            
                        }
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
            }
            .ignoresSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
