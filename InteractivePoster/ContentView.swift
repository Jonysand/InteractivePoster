//
//  ContentView.swift
//  socketClient
//
//  Created by Yongkun Li on 2/11/20.
//  Copyright © 2020 Yongkun Li. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isFlipping = false
    let defaultFoldingCorner = CGPoint.init(x:0.0, y: UIScreen.main.bounds.size.height+50.0)
    @State var FoldingCorner: CGPoint
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Spacer()
                
                Text("SLEEPY?")
                    .font(.custom("BebasNeue", size: 72))
                    .foregroundColor(Color.black)
                    .padding(.top)
                Text("NEED MORE COFFEE?")
                    .font(.custom("BebasNeue", size: 36))
                    .foregroundColor(Color.black)
                    .padding(.bottom, 20)
                
                Spacer()
                
                centerGrid()
                    .frame(width: 300.0, height: 300.0, alignment: .center)
                
                Spacer()
                
                Text("COF-BREAK")
                    .font(.custom("BebasNeue", size: 72))
                    .foregroundColor(Color.black)
                HStack{
                    Spacer()
                    VStack (alignment: .trailing){
                        Text("13 FEB 2020")
                            .font(.custom("Futura", size: 18))
                            .foregroundColor(Color.black)
                        Text("NY BROOKLYN")
                            .font(.custom("Futura", size: 18))
                            .foregroundColor(Color.black)
                    }.padding(.trailing, 50)
                }.padding()
                
                Spacer()
                
                HStack(alignment: .center){
                    Spacer()
                    
                    VStack{
                        HStack{
                            Image("nyu")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Image("itp")
                                .resizable()
                                .frame(width: 50, height: 50)
                        }.padding()
                    }
                }
            }.background(LinearGradient(gradient: Gradient(colors: [Color("BGColor1"), .white]), startPoint: .top, endPoint: .bottom))
            
            ZStack(alignment: .bottom){
                HStack{
                    Image("coffeeBG")
                        .resizable()
                        .frame(width: 300.0, height: 200.0)
                        //                        .offset(x: -5, y: 5)
                        .blur(radius: 2)
                        .clipShape(Path { path in
                            path.move(to: CGPoint(x: 0.0, y: 0.0))
                            path.addLine(to: CGPoint.init(x: 0.0, y: 200.0))
                            path.addLine(to: CGPoint.init(x: 300.0, y: 200.0))
                        })
                    Spacer()
                }
                
                HStack{
                    VStack(alignment: .leading){
                        Text("BROUGHT TO YOU BY")
                            .font(.custom("Futura", size: 14))
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                        Text("ITP, New York University")
                            .font(.custom("Futura", size: 14))
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                    }.offset(x: 20, y: -24)
                    Spacer()
                }
                
                Path { path in
                    path.move(to: CGPoint(x: 0.0, y: UIScreen.main.bounds.size.height-200.0))
                    path.addLine(to: FoldingCorner)
                    path.addLine(to: CGPoint.init(x: 300.0, y: UIScreen.main.bounds.size.height))
                }.fill(LinearGradient(gradient: Gradient(colors: [Color("BGColor1"), .white]), startPoint: .top, endPoint: .init(x: FoldingCorner.y/UIScreen.main.bounds.size.height, y: FoldingCorner.y/UIScreen.main.bounds.size.height)))
                    .shadow(radius: 5, x: 20, y: 20)
                
            }
        }
        .gesture(DragGesture(minimumDistance: 50, coordinateSpace: .local)
            .onChanged{ value in
                if(self.FoldingCorner.x<280.0){
                self.FoldingCorner.x = -value.translation.height*3.0/2.0
                self.FoldingCorner.y = UIScreen.main.bounds.size.height+value.translation.height
                }
            }
            .onEnded{value in
                self.FoldingCorner = self.defaultFoldingCorner
            }
        )
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(FoldingCorner: CGPoint.init(x:0.0, y: UIScreen.main.bounds.size.height)).previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
