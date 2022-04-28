//
//  mainPage.swift
//  TestDE
//
//  Created by Student on 28.04.2022.
//

import SwiftUI

struct mainPage: View {
    @State private var btnUserPofile = false
    var body: some View {
        NavigationView{
            ZStack{
                Text("")
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .background(Color("DarkGreen"))
                VStack{
                    HStack{
                        Image("Hamburger")
                            .padding(.horizontal, 10)
                        
                        Spacer()
                        
                        Image("LogoMini")
                            .resizable()
                            .frame(width: 60, height: 60)
                        
                        Spacer()
                        
                        Button(action: {
                            btnUserPofile.toggle()
                        })
                        {
                            Image("Avatar")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding(.horizontal, 10)
                        }
                        NavigationLink(destination: UserprofilePage(), isActive: $btnUserPofile)
                        {
                            
                        }
                    }
                    VStack(alignment:.leading){
                        Text("С возвращением, Эмиль!")
                            .fontWeight(.bold)
                            .font(.system(size: 27))
                        Text("Каким ты себя ощущаешь сегодня?")
                            .fontWeight(.light)
                            .font(.system(size: 19))
                        
                        ScrollView(.horizontal){
                            HStack(spacing: 30){
                                VStack
                                {
                                    Image("1")
                                    Text("Спокойным")
                                        .font(.system(size: 10))
                                }
                                VStack
                                {
                                    Image("2")
                                    Text("Расслабленным")
                                        .font(.system(size: 10))
                                }
                                VStack
                                {
                                    Image("3")
                                    Text("Сосредоточенным")
                                        .font(.system(size: 10))
                                }
                                VStack
                                {
                                    Image("4")
                                        .offset(y: 10)
                                    Text("Взволнованным")
                                        .offset(y: -10)
                                        .font(.system(size: 10))
                                }
                            }
                        }
                    }
                    .padding()
                    .foregroundColor(.white)
                    Spacer()
                }
                .padding(.top, 45)
            }
            .ignoresSafeArea(.all)
        }
    }
}

struct mainPage_Previews: PreviewProvider {
    static var previews: some View {
        mainPage()
            .previewInterfaceOrientation(.portrait)
    }
}
