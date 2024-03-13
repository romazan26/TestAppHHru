//
//  LoginView.swift
//  TestAppHHru
//
//  Created by Роман on 13.03.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    var body: some View {
        VStack {
            Text("Вход в личный кабинет").font(.title2)
            Spacer()
            GroupBox {
                VStack(alignment: .leading, spacing: 5){
                    Text("Поиск работы")
                    TextField(text: $email) {
                        Label("Электронная почта или телефон", systemImage: "envelope")
                    }
                    .padding()
                        .background(Color.gray.opacity(0.4))
                        .cornerRadius(10)
                }
                HStack{
                    Button("Продолжить") {
                     //action
                    }.buttonStyle(.borderedProminent)
                        .frame(width: 167, height: 40)
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
    LoginView()
}
