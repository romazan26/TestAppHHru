//
//  FindView.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import SwiftUI

struct FindView: View {
    @StateObject var viewModel = FindViewModel()
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack{
                    ForEach(viewModel.offers, id: \.self.id) { offer in
                       offerCellView(offer: offer)
                    }
                }
            }
            Text("Вакансии для вас")
            VStack {
               
            }
        }
    }
}
    
    #Preview {
        FindView()
    }
