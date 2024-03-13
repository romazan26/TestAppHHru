//
//  OTPTextField.swift
//  TestAppHHru
//
//  Created by Роман on 13.03.2024.
//

import SwiftUI

struct OTPTextField: View {
    
    let numberOfFields: Int
    
    @State var enterValue: [String]
    @State private var oldValue = ""
    @FocusState private var fieldFocus: Int?
    
    init(numberOfFields: Int) {
        self.numberOfFields = numberOfFields
        self.enterValue = Array(repeating: "", count: numberOfFields)
    }
    
    var body: some View {
        HStack {
            ForEach(0..<numberOfFields, id: \.self) {index in
                TextField("", text: $enterValue[index], onEditingChanged: { editing in
                    if editing {
                        oldValue = enterValue[index]
                    }
                })
                    .keyboardType(.numberPad)
                    .frame(width: 48, height: 48)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(5)
                    .multilineTextAlignment(.center)
                    .focused($fieldFocus, equals: index)
                    .tag(index)
                    .onChange(of: enterValue[index]) {newValue in
                        if enterValue[index].count > 1 {
                            let curentValue = Array(enterValue[index])
                            if curentValue[0] == Character(oldValue) {
                                enterValue[index] = String(enterValue[index].suffix(1))
                            }else {
                                enterValue[index] = String(enterValue[index].prefix(1))
                            }
                        }
                        
                        if !newValue.isEmpty {
                            if index == numberOfFields - 1 {
                                fieldFocus = nil
                            } else {
                                fieldFocus = (fieldFocus ?? 0) + 1
                            }
                        }else {
                            fieldFocus = (fieldFocus ?? 0) - 1
                        }
                        
                    }
                }
                .keyboardType(.numberPad)
            }
        }
    
}

#Preview {
    OTPTextField(numberOfFields: 4)
}
