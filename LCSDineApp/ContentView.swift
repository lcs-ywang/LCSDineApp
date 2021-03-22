//
//  ContentView.swift
//  LCSDineApp
//
//  Created by Yining Wang on 2021-03-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                Group{
                    NavigationLink(destination: HouseView()){
                        Text("Link One")
                    }
                }
            }
            .navigationBarTitle("Main Page")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
