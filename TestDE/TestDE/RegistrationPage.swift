//
//  RegistrationPage.swift
//  TestDE
//
//  Created by Student on 28.04.2022.
//

import SwiftUI

struct RegistrationPage: View {
    var body: some View {
        Text("Тут будет регистрация!")
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(Color("DarkGreen"))
            .foregroundColor(.white)
    }
}

struct RegistrationPage_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationPage()
    }
}
