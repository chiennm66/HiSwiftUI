//
//  ContentView.swift
//  HiSwiftUI
//
//  Created by CHIEN on 31/5/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = "XIN CHÀO CÁC BẠN"
    @State private var imageName = "deskview"

    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.blue)
                .frame(width: 300, height: 300)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.red)
            // màu, font chữ, size hình ảnh
            // ADD - BUTTON
            
            HStack {
                Button("CLICK ME 1"){
                    print("change text1")
                    message = "HÔM NAY LÀ T7"
                    imageName = "pencil"
                }
                Button("CLICK ME 2"){
                    print("change text2")
                    message = "HÔM NAY LÀ CN"
                    imageName = "trash"
                }
            }
            .font(.title3)
            .tint(.red)
            .buttonStyle(.borderedProminent)

            
        }
        
        //UI
        
        
        .padding()
    }
    
    
}

#Preview {
    ContentView()
}
