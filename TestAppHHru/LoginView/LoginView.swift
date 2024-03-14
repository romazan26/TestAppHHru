//
//  LoginView.swift
//  TestAppHHru
//
//  Created by Роман on 13.03.2024.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel: LoginViewModel
    
    var body: some View {
        VStack {
            Text("Вход в личный кабинет").font(.title2)
            Spacer()
            GroupBox {
                VStack(alignment: .leading, spacing: 5){
                    Text("Поиск работы")
                    TextField(text: $viewModel.email) {
                        Label("Электронная почта или телефон", systemImage: "envelope")
                    }
                    .padding()
                    .background(Color.gray.opacity(0.4))
                    .cornerRadius(10)
                }
                HStack{
                    Button("Продолжить") {
                        viewModel.checkEmail()
                    }.buttonStyle(.borderedProminent)
                        .frame(width: 167, height: 40)
                        .sheet(isPresented: $viewModel.isCorrectEmail, content: {
                            PinCodeView(viewModel: viewModel)
                        })
                    
                    Button("Войти с паролем") {
                        //action
                    }
                    .frame(width: 167, height: 40)
                }
            }
            GroupBox {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Поиск сотрудников").font(.title3)
                    Text("Размещение вакансий и доступ к базе резюме").font(.system(size: 14))
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 25.0)
                                .foregroundStyle(.green)
                                .frame(height: 32)
                            Text("Я ищу сотрудников")
                                .foregroundStyle(.white)
                                .font(.system(size: 14))
                        }
                    }
                }
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    LoginView(viewModel: LoginViewModel()
    )
}