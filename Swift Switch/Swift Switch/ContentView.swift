//
//  ContentView.swift
//  Swift Switch
//
//  Created by Lucas Kobashi on 2022-08-23.
//

import SwiftUI

// Collection of options for the app
struct Options: Hashable {
    let title: String
    let img: String
}

struct ContentView: View {
    
    let options: [Options] = [
        .init(title: "home", img: "house"),
        .init(title: "about", img: "info.circle"),
        .init(title: "settings", img: "gear"),
    ]
    
    var body: some View {
        NavigationView{
            ListView(options: options)
            MainView()
        }
        .frame(minWidth: 600, minHeight: 400)
    }
}

struct ListView: View {
    let options: [Options]
    var body: some View {
        
        VStack(alignment: .center, spacing: 10){
            Text("Swift Switch")
            Divider()
            Text("Payload Injector")
            Text("Thing 2")
            Text("Thing 3")
            Divider()
            ForEach(options, id: \.self) { option in
                HStack(alignment: .center){
                    Image(systemName: option.img)
                    /*@START_MENU_TOKEN@*/Text(option.title)/*@END_MENU_TOKEN@*/
                }
            }
            Spacer()
        }
        .padding(.top,10)
    }
}

struct MainView: View {
    var body: some View {
        Text("Main")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
