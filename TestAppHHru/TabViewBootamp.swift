//
//  ContentView.swift
//  TestAppHHru
//
//  Created by Роман on 13.03.2024.
//

import SwiftUI

struct TabViewBootamp: View {
    
    @ObservedObject var viewModel: LoginViewModel
    
    var body: some View {
         
        TabView {
            if viewModel.isLogin {
                FindView()
                    .tabItem { Label("Поиск", systemImage: "magnifyingglass") }
            }else {
                LoginView(viewModel: viewModel)
                    .tabItem { Label("Поиск", systemImage: "magnifyingglass") }
            }
                
            Text("Избранное")
                .tabItem { Label("Избранное", systemImage: "heart") }
            Text("Отклики")
                .tabItem { Label("Отклики", systemImage: "envelope") }
            Text("Сообщения")
                .tabItem { Label("Сообщения", systemImage: "message.fill") }
            Text("Профиль")
                .tabItem { Label("Профиль", systemImage: "person") }
        }
    }
}

#Preview {
    TabViewBootamp(viewModel: LoginViewModel())
}
