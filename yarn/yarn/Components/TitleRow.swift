//
//  TitleRow.swift
//  yarn
//
//  Created by Bora Balos on 12/12/2024.
//

import SwiftUI

struct TitleRow: View {
    var imageURL = URL(string: "https://www.borabalos.com/_next/image?url=%2Fandroid-chrome-512x512.png&w=256&q=75")
    var name = "Bora Balos"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageURL) { image in image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.orange)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.orange)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
}

#Preview {
    TitleRow()
        .background(Color("Peach"))
}
