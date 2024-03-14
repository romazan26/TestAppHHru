//
//  FindView.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import SwiftUI

struct FindView: View {
    @StateObject var viewModel = FindViewController()
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack{
                    ForEach(viewModel.offers, id: \.self.id) { offer in
                        
                    }
                }
            }
            Text("Вакансии для вас")
            VStack {
               JobCellView()
                JobCellView()
            }
        }
    }
}
    
    #Preview {
        FindView()
    }
