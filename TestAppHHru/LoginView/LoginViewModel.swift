//
//  LoginViewModel.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import Foundation

final class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var isCorrectEmail = true
    @Published var isLogin = false
    
    func checkEmail(){
        if isCorrectEmail {
            isLogin = true
        }else {
            isLogin = false
            email = ""
        }
    }
    
    func isValidEmail(){
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        if emailPred.evaluate(with: email) {
            isCorrectEmail = true
        } else {
            isCorrectEmail = false
        }
    }
}
