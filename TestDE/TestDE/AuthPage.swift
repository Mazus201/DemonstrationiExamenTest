//
//  AuthPage.swift
//  TestDE
//
//  Created by Student on 28.04.2022.
//

import SwiftUI

struct AuthPage: View {
    
    @State var email = ""
    @State var password = ""
    @State var login = false
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    Text("")
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .background(Color("DarkGreen"))
                }
                VStack{
                    Spacer()
                    Image("Leaves")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width + 30, height: 250)
                }
                VStack(){
                    VStack(alignment: .leading){
                        
                        Image("LogoMini")
                            .resizable()
                            .frame(width: 100, height: 120)
                        Text("Авторизация")
                            .font(.system(size: 30))
                        TextField("Электронная почта", text: $email)
                            .foregroundColor(.white)
                        Divider()
                            .background(.white)
                        SecureField("Пароль", text: $password)
                            .foregroundColor(.white)
                        Divider()
                            .background(.white)
                    }
                    Button(action:{
                        if (password.isEmpty || email.isEmpty) {
                            showingAlert = true
                        }
                        else {
                            login.toggle()
                        }
                    })
                    {
                        Text("Войти")
                            .frame(width: 300, height: 60)
                            .background(Color("Green"))
                            .cornerRadius(10)
                    }
                    .alert("Вы не ввели логин или пароль", isPresented: $showingAlert) {
                        Button("OK", role: .cancel, action: {
                            //
                        })
                    }
                    .padding(.vertical, 50)
                    NavigationLink(destination: mainPage().navigationBarHidden(true), isActive: $login){
                    }
                }
                .padding(50)
                .foregroundColor(.white)
            }
            .ignoresSafeArea(.all)
        }
    }
}

struct AuthPage_Previews: PreviewProvider {
    static var previews: some View {
        AuthPage()
    }
}
