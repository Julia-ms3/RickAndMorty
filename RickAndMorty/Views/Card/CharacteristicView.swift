//
//  CharacteristicView.swift
//  RickAndMorty
//
//  Created by Julia Matviychuk on 03.12.2024.
//

import SwiftUI

struct CharacteristicView: View {
    var title: String
    var value: String
    
    var body: some View {
        HStack {
            Text("\(title): ")
                .font(.system(size: 18, weight: .bold))
            Text(value)
                .font(.system(size: 18, weight: .light))
                .foregroundColor(.gray)
        }
    }
}


