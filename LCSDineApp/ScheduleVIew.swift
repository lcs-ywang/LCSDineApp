//
//  ScheduleView.swift
//  LCSDineApp
//
//  Created by Yining Wang on 2021-03-22.
//

import SwiftUI

struct ScheduleView: View {
    
    var body: some View {
        VStack{
            Form{
                Section(header:Text("Lunch")){
                    Text("Hello Darkness")
                }
                
                Section(header:Text("Lunch")){
                    Text("Hello Darkness")
                }
            }
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
