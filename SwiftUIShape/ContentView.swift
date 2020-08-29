//
//  ContentView.swift
//  SwiftUIShape
//
//  Created by Abdelrahman Mohamed on 28.08.2020.
//  Copyright © 2020 Abdelrahman Mohamed. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private var blueColor: Color = Color(red: 52/255, green: 52/255, blue: 122/255)
    private var purpleGradient = LinearGradient(gradient: Gradient(colors: [ Color(red: 207/255, green: 150/255, blue: 207/255), Color(red: 107/255, green: 116/255, blue: 179/255) ]), startPoint: .trailing, endPoint: .leading)
    
    var body: some View {
        
        ScrollView(showsIndicators: true) {
            
            LazyVStack(spacing: 400) {
                
                Group {
                    ZStack {
                        
                        Circle()
                            .trim(from: 0, to: 0.4)
                            .stroke(Color(.systemBlue), lineWidth: 80)
                        
                        Circle()
                            .trim(from: 0.4, to: 0.6)
                            .stroke(Color(.systemTeal), lineWidth: 80)
                        
                        Circle()
                            .trim(from: 0.6, to: 0.75)
                            .stroke(Color(.systemPurple), lineWidth: 80)
                        
                        Circle()
                            .trim(from: 0.75, to: 1)
                            .stroke(Color(.systemYellow), lineWidth: 90)
                            .overlay(
                                Text("25%")
                                    .font(.system(.title, design: .rounded))
                                    .bold()
                                    .foregroundColor(.white)
                                    .offset(x: 120, y: -100)
                            )
                        
                    }
                    .frame(width: 300, height: 300)
                    ZStack {
                        
                        Circle()
                            .stroke(Color(.systemGray6), lineWidth: 20)
                            .frame(width: 200, height: 200)
                        
                        Circle()
                            .trim(from: 0, to: 0.85)
                            .stroke(purpleGradient, lineWidth: 20)
                            .frame(width: 200, height: 200)
                            .overlay(
                                VStack {
                                    Text("85%")
                                        .font(.system(size: 80, weight: .bold, design: .rounded))
                                        .foregroundColor(Color(.systemGray))
                                    Text("Complete")
                                        .font(.system(.body, design: .rounded))
                                        .bold()
                                        .foregroundColor(Color(.systemGray))
                                }
                            )
                    }
                    
                    ZStack {
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: -90.0), endAngle: Angle(degrees: -60), clockwise: false)
                            path.closeSubpath()
                        }
                        .fill(Color.pink)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: -90.0), endAngle: Angle(degrees: -60), clockwise: false)
                            path.closeSubpath()
                        }
                        .stroke(blueColor, lineWidth: 5)
                        //                    .fill(Color.pink)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: -60), endAngle: Angle(degrees: 270), clockwise: false)
                            path.closeSubpath()
                        }
                        .stroke(blueColor, lineWidth: 5)
                    }
                    
                    ZStack {
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: -90.0), endAngle: Angle(degrees: 0), clockwise: false)
                        }
                        .fill(Color.pink)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 270), clockwise: false)
                        }
                        .fill(Color.yellow)
                    }
                    
                    ZStack {
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: -90.0), endAngle: Angle(degrees: 0), clockwise: false)
                        }
                        .fill(Color.pink)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 45), clockwise: false)
                        }
                        .fill(Color.blue)
                        .offset(x: 10, y: 5)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: 45), endAngle: Angle(degrees: 75), clockwise: false)
                        }
                        .fill(Color.black)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: 75), endAngle: Angle(degrees: 90), clockwise: false)
                        }
                        .fill(Color.gray)
                        .offset(x: 1.5, y: 15)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 135), clockwise: false)
                        }
                        .fill(Color.red)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: 135), endAngle: Angle(degrees: 225), clockwise: false)
                        }
                        .fill(Color.orange)
                        .offset(x: -10, y: 0)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: 225), endAngle: Angle(degrees: 270), clockwise: false)
                        }
                        .fill(Color.yellow)
                        .offset(x: -5, y: -10)
                    }
                    
                    
                    ZStack {
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 90), clockwise: false)
                        }
                        .fill(Color.yellow)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 135), clockwise: false)
                        }
                        .fill(Color.orange)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: 135), endAngle: Angle(degrees: 225), clockwise: false)
                        }
                        .fill(Color.red)
                        .offset(x: -10, y: 0)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: 135), endAngle: Angle(degrees: 225), clockwise: false)
                            path.closeSubpath()
                        }
                        .stroke(Color(red: 52/255, green: 52/255, blue: 122/255), lineWidth: 5)
                        .offset(x: -10, y: 0)
                        .overlay(
                            Text("25%")
                                .font(.system(.largeTitle, design: .rounded))
                                .bold()
                                .foregroundColor(.white)
                                .offset(x: -50, y: 170)
                        )
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: 225), endAngle: Angle(degrees: 270), clockwise: false)
                        }
                        .fill(Color.pink)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: 270), endAngle: Angle(degrees: 315), clockwise: false)
                        }
                        .fill(Color.purple)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 75, startAngle: Angle(degrees: 315), endAngle: Angle(degrees: 360), clockwise: false)
                        }
                        .fill(Color.blue)
                    }
                    
                    Button(action: {
                        // Action to perform
                    }) {
                        Circle()
                            .foregroundColor(.green)
                            .frame(width: 200, height: 200)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(.white)
                        )
                    }
                }
                
                
                Group {
                    
                    Button(action: {
                        // Action to perform
                    }) {
                        Text("Test")
                            .font(.system(.title, design: .rounded))
                            .bold()
                            .foregroundColor(.white)
                            .frame(width: 250, height: 50)
                            .background(Dome().fill(Color.yellow))
                    }
                    
                    Path() { path in
                        
                        path.move(to: CGPoint(x: 100, y: 100))
                        path.addQuadCurve(to: CGPoint(x: 300, y: 100), control: CGPoint(x: 100, y: -20))
                        path.addLine(to: CGPoint(x: 300, y: 140))
                        path.addLine(to: CGPoint(x: 300, y: 140))
                        path.addLine(to: CGPoint(x: 100, y: 140))
                    }
                    .fill(Color.pink)
                    
                    Path() { path in
                        path.move(to: CGPoint(x: 0, y: 0))
                        path.addQuadCurve(to: CGPoint(x: 200, y: 0), control: CGPoint(x: 100, y: -20))
                        path.addRect(CGRect(x: 0, y: 0, width: 200, height: 40))
                    }
                    .fill(Color.green)
                    
                    ZStack {
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 90), clockwise: false)
                        }
                        .fill(Color.yellow)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 135), clockwise: false)
                        }
                        .fill(Color.orange)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 135), endAngle: Angle(degrees: 225), clockwise: false)
                        }
                        .fill(Color.red)
                        .offset(x: -10, y: 0)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 135), endAngle: Angle(degrees: 225), clockwise: false)
                            path.closeSubpath()
                        }
                        .stroke(Color(red: 52/255, green: 52/255, blue: 122/255), lineWidth: 5)
                        .offset(x: -10, y: 0)
                        .overlay(
                            Text("25%")
                                .font(.system(.largeTitle, design: .rounded))
                                .bold()
                                .foregroundColor(.white)
                                .offset(x: -90, y: 200)
                        )
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 225), endAngle: Angle(degrees: 270), clockwise: false)
                        }
                        .fill(Color.pink)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 270), endAngle: Angle(degrees: 315), clockwise: false)
                        }
                        .fill(Color.purple)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 315), endAngle: Angle(degrees: 360), clockwise: false)
                        }
                        .fill(Color.blue)
                    }
                    
                    ZStack {
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 190), clockwise: true)
                        }
                        .fill(Color(.systemYellow))
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 190), endAngle: Angle(degrees: 130), clockwise: true)
                        }
                        .fill(Color(.systemRed))
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 130), endAngle: Angle(degrees: 110), clockwise: true)
                        }
                        .fill(Color(.systemTeal))
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 110), endAngle: Angle(degrees: 90), clockwise: true)
                        }
                        .fill(Color(.systemBlue))
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 360), clockwise: true)
                        }
                        .fill(Color(.systemPurple))
                        .offset(x: 20, y: 20)
                        
                        Path { path in
                            path.move(to: CGPoint(x: 200, y: 200))
                            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 360), clockwise: true)
                            path.closeSubpath()
                        }
                        .stroke(Color(red: 52/255, green: 52/255, blue: 122/255), lineWidth: 10)
                        .offset(x: 20, y: 20)
                        .overlay(
                            Text("25%")
                                .font(.system(.largeTitle, design: .rounded))
                                .bold()
                                .foregroundColor(.white)
                                .offset(x: 80, y: 270)
                        )
                    }
                    
                    Path() { path in
                        path.move(to: CGPoint(x: 200, y: 200))
                        path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 360.0), clockwise: false)
                    }
                    .fill(Color.yellow)
                    
                    Path() { path in
                        path.move(to: CGPoint(x: 20, y: 20))
                        path.addLine(to: CGPoint(x: 300, y: 20))
                        path.addLine(to: CGPoint(x: 300, y: 200))
                        path.addLine(to: CGPoint(x: 20, y: 200))
                    }
                    .fill(Color.red)
                    
                    Path() { path in
                        path.move(to: CGPoint(x: 20, y: 20))
                        path.addLine(to: CGPoint(x: 300, y: 20))
                        path.addLine(to: CGPoint(x: 300, y: 200))
                        path.addLine(to: CGPoint(x: 20, y: 200))
                        path.closeSubpath()
                    }
                    .stroke(Color.red, lineWidth: 10)
                    
                    Path() { path in
                        path.move(to: CGPoint(x: 20, y: 60))
                        path.addLine(to: CGPoint(x: 40, y: 60))
                        path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 0))
                        path.addLine(to: CGPoint(x: 230, y: 60))
                        path.addLine(to: CGPoint(x: 230, y: 100))
                        path.addLine(to: CGPoint(x: 20, y: 100))
                    }
                    .fill(Color.red)
                    
                    ZStack {
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 20, y: 60))
                            path.addLine(to: CGPoint(x: 40, y: 60))
                            path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: -200))
                            path.addLine(to: CGPoint(x: 230, y: 60))
                            path.addLine(to: CGPoint(x: 230, y: 100))
                            path.addLine(to: CGPoint(x: 20, y: 100))
                        }
                        .fill(Color.red)
                        
                        Path() { path in
                            path.move(to: CGPoint(x: 20, y: 60))
                            path.addLine(to: CGPoint(x: 40, y: 60))
                            path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: -100))
                            path.addLine(to: CGPoint(x: 230, y: 60))
                            path.addLine(to: CGPoint(x: 230, y: 100))
                            path.addLine(to: CGPoint(x: 20, y: 100))
                            path.closeSubpath()
                        }
                        .stroke(Color.black, lineWidth: 5)
                    }
                }
                
            }
        }
    }
}

struct Dome: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addQuadCurve(to: CGPoint(x: rect.size.width, y: 0), control: CGPoint(x: rect.size.width/2, y: -(rect.size.width * 0.1)))
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        
        return path
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
