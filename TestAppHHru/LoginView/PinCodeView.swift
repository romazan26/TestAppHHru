//
//  PinCodeView.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import SwiftUI

struct PinCodeView: View {
    @ObservedObject var viewModel: LoginViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Отправили код на \(viewModel.email)").font(.title2)
            Text("Напишите его, чтобы подтвердить, что это вы, а не кто-то другой входит в личный кабинет")
            OTPTextField(numberOfFields: 4)
            Button("Подтвердить") {
                viewModel.isLogin.toggle()
            }
            .buttonStyle(.borderedProminent)
                
        }.padding(5)
    }
}

#Preview {
    PinCodeView(viewModel: LoginViewModel())
}
