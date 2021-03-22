//
//  HouseView.swift
//  LCSDineApp
//
//  Created by Yining Wang on 2021-03-22.
//

import SwiftUI

struct HouseView: View {
    private var houses:[String] = ["Ryder", "", ""]
    
    var body: some View {
        VStack{
            List{
                ForEach(0..<houses.count){ num in
                    
                    NavigationLink(destination: ScheduleView()){
                        Text("\(houses[num])")
                    }
                }
            }
            .navigationBarTitle("Houses")
        }
    }
}

struct HouseView_Previews: PreviewProvider {
    static var previews: some View {
        HouseView()
    }
}
