//
//  centerGrid.swift
//  socketClient
//
//  Created by Yongkun Li on 2/11/20.
//  Copyright © 2020 Yongkun Li. All rights reserved.
//

import SwiftUI

struct centerGrid: View {
    var body: some View {
        VStack(spacing: 0){
            HStack(spacing:0){
                Image("coffee")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(10)
                    .border(Color.black, width: 4)
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 100, height: 100)
                    .border(Color.black, width: 4)
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 100, height: 100)
                    .border(Color.black, width: 4)
            }
            HStack(spacing:0){
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 100, height: 100)
                    .border(Color.black, width: 4)
                Image("coffee")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(10)
                    .border(Color.black, width: 4)
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 100, height: 100)
                    .border(Color.black, width: 4)
            }
            HStack(spacing:0){
                Circle()
                    .stroke(Color.black, lineWidth: 3)
                    .frame(width: 80, height: 80)
                    .padding(10)
                    .border(Color.black, width: 4)
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 100, height: 100)
                    .border(Color.black, width: 4)
                Image("coffee")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .padding(10)
                    .border(Color.black, width: 4)
            }
        }
    }
}

struct centerGrid_Previews: PreviewProvider {
    static var previews: some View {
        centerGrid()
    }
}
