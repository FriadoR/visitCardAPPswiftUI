//
//  ContentView.swift
//  CardMySelf SwiftUI
//
//  Created by Сергей Саченко on 09.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.29, blue: 0.37).ignoresSafeArea()
            VStack {
                Image("sachenkoImage").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 150, height: 150).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(lineWidth: 5))
                Text("Sergey Sachenko")
                    .font(.title2)
                    .fontWeight(.heavy)
                Text("IOS developer / Data Scientist")
                    .font(.headline)
                    .fontWeight(.semibold)
                Divider()
                Card(image: "phone.fill", massage: "+79522368874")
                Card(image: "envelope.fill", massage: "eu.friador@yandex.ru")
            }.foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let massage: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25).padding(.horizontal).frame(height: 40).overlay(HStack {Image(systemName: image)
            Text(massage)
                .fontWeight(.semibold)
        }.foregroundColor(Color(red: 0.20, green: 0.29, blue: 0.37)))
    }
}
