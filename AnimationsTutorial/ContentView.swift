//
//  ContentView.swift
//  AnimationsTutorial
//
//  Created by Danjuma Nasiru on 09/01/2023.
//

import SwiftUI


struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition{
    static var pivot : AnyTransition{
        .modifier(active: CornerRotateModifier(amount: -90, anchor: .topLeading), identity: CornerRotateModifier(amount: 0, anchor: .topLeading))
    }
}


struct ContentView: View {
    //    @State private var animationAmount = 1.0
    @State private var animationAmount = 0.0
    @State private var scaleAmount = 1.0
    @State private var opacity = 1.0
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    @State private var letters = Array("Hello SwiftUI!")
    @State private var isShowingRed = false
    
    var body: some View {
        
//        ZStack {
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 200, height: 200)
//
//            if isShowingRed {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 190, height: 190)
//                    .transition(.pivot)
//            }
//        }
//        .onTapGesture {
//            withAnimation {
//                isShowingRed.toggle()
//            }
//        }
        
        
        
        
        
        //        VStack{
        //            Button("Tap me"){
        //                withAnimation {isShowingRed.toggle()}
        //            }
        //
        //            if isShowingRed{
        //                Rectangle()
        //                    .fill(.red)
        //                    .frame(width: 200, height: 200)
        //                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
        //            }
        //        }
        
        
        
        
        //        HStack(spacing: 2){
        //            ForEach(0..<letters.count, id: \.self) { num in
        //                Text(String(letters[num]))
        //                    .padding()
        //                    .font(.title)
        //                    .background(enabled ? .blue : .red)
        //                    .offset(dragAmount)
        //                    .animation(.default.delay(Double(num) / 20), value: dragAmount)
        //            }
        //        }.gesture(DragGesture().onChanged{dragAmount = $0.translation}
        //            .onEnded{_ in dragAmount = .zero
        //                enabled.toggle()
        //            })
        
        
        
        
        //        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing).frame(width: 300, height: 200).clipShape(RoundedRectangle(cornerRadius: 20)).offset(dragAmount).gesture(DragGesture().onChanged{dragAmount = $0.translation}
        //            .onEnded{_ in withAnimation(.spring(), {dragAmount = .zero})})
        //.animation(.spring(), value: dragAmount)
        
        
        
        //        //the order to which you apply modifiers matters
        //        VStack(spacing: 20){
        //            Button("Tap Me") {
        //                enabled.toggle()
        //            }
        //
        //            .frame(width: 200, height: 200)
        //            .background(.blue)
        //            .foregroundColor(.white)
        //            .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        //            .animation(.default, value: enabled)
        //
        //            Button("Tap Me") {
        //                enabled.toggle()
        //            }
        //            .frame(width: 200, height: 200)
        //            .background(enabled ? .blue : .red)
        //            .animation(nil, value: enabled)
        //            .foregroundColor(.white)
        //            .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        //            .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
        //        }
        
        
        
        //        Button("Tap Me") {
        //            withAnimation(.easeIn(duration: 1), {
        //                animationAmount += 360
        //                scaleAmount += 0.25
        //                opacity -= 0.2
        //            })
        //        }
        //        .padding(50)
        //        .background(.red)
        //        .foregroundColor(.white)
        //        .clipShape(Circle())
        //        .scaleEffect(scaleAmount).opacity(opacity)
        //        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
        //        .rotationEffect(.degrees(animationAmount))
        
        
        
                print(animationAmount
                )
        
                return VStack{
                    Stepper("Scale Amount", value: $animationAmount.animation(.easeInOut(duration: 1)), in: 1...10)
        
                    Spacer()
        
                    Button("Tap me"){
                        animationAmount += 1
                    }.padding(50)
                        .background(.red)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .scaleEffect(animationAmount)
                }
        
        
        
        
        //        Button("Tap me", action: {animationAmount += 1}).padding().background(.red).foregroundColor(.white).clipShape(Circle()).scaleEffect(animationAmount).blur(radius: (animationAmount - 1) * 3).animation(
        //            .easeInOut(duration: 1).repeatForever(autoreverses: true)
        //            ,
        //            value: animationAmount)
        
        
        
        
        
        //        Button("Tap me", action: {}).padding().background(.red).foregroundColor(.white)
        //            .clipShape(Circle()).overlay(content: {Circle().stroke(.red).scaleEffect(animationAmount).opacity((2-animationAmount)).animation(.easeInOut(duration: 1).repeatForever(autoreverses: false), value: animationAmount)}).onAppear(perform: {animationAmount = 2})
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
