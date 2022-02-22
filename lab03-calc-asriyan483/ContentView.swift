//
//  ContentView.swift
//  lab03-calc-asriyan483
//
//  Created by user on 22.02.2022.
//  Copyright © 2022 Asriyan. All rights reserved.
//
import SwiftUI

struct ContentView: View {
    
    @State var x: String = "0"
    @State var y: String = "0"
    @State var result: String = "0"
    @State var action: String = ""
    
    var body: some View {
            ZStack {
                Color("background")
                VStack (spacing: 1){
                    Spacer()
                    Text("\(result)").font(.system(size: 60))
                        .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                    
                    HStack (spacing: 1){
                        Button(action: {
                            self.x = "0"
                            self.y = "0"
                            self.result = "0"
                        }){
                            ZStack {
                                Color("btn_special")
                                Text("AC")
							}
							.padding(.trailing)
                        }
                        Button(action: {
                            var a:Float = Float(self.x)!
                            a *= -1
                            self.x = "\(a)"
                            self.result = "\(a)"
                        }){
                            ZStack {
                                Color("btn_special")
                                Image(systemName: "plusminus")
                            }
                        }
                        Button(action: {
                            let a: Float = Float(self.x)!
                            let b: Float = Float(self.y)!
                            let temp: Float = b / 100.0 * a
                            
                            if(self.action == "/"){
                                self.x = String(a / temp)
                            } else if(self.action == "*"){
                                self.x = String(a * temp)
                            } else if(self.action == "+"){
                                self.x = String(a + temp)
                            } else if(self.action == "-"){
                                self.x = String(a - temp)
                            }
                            
                            self.result = self.x
                            self.y = "0"
                            self.action = "%"
                        }){
                            ZStack {
                                Color("btn_special")
                                Image(systemName: "percent")
                            }
                        }
                        Button(action: {
                            self.result = ""
                            self.action = "/"
                        }){
                            ZStack {
                                Color("btn_action")
                                Image(systemName: "divide")
                            }
                        }
                    }.frame(height: UIScreen.main.bounds.width / 4)
                    HStack (spacing: 1){
                        Button(action: {
                            if(self.result.count == 1 && self.x == "0"){
                                self.x = "7"
                                self.result = self.x
                            }else if(self.result.count == 0 && self.x != "0"){
                                self.y = "7"
                                self.result = self.y
                            }else if(self.result.count > 0 && self.y == "0"){
                                self.x += "7"
                                self.result = self.x
                            }else if(self.result.count > 0 && self.y.count >= 1){
                                self.y += "7"
                                self.result = self.y
                            }
                        }){
                            ZStack {
                                Color("btn_digit")
                                Text("7")
                            }
                        }
                        Button(action: {
                            if(self.result.count == 1 && self.x == "0"){
                                self.x = "8"
                                self.result = self.x
                            }else if(self.result.count == 0 && self.x != "0"){
                                self.y = "8"
                                self.result = self.y
                            }else if(self.result.count > 0 && self.y == "0"){
                                self.x += "8"
                                self.result = self.x
                            }else if(self.result.count > 0 && self.y.count >= 1){
                                self.y += "8"
                                self.result = self.y
                            }
                        }){
                            ZStack {
                                Color("btn_digit")
                                Text("8")
                            }
                        }
                        Button(action: {
                            if(self.result.count == 1 && self.x == "0"){
                                self.x = "9"
                                self.result = self.x
                            }else if(self.result.count == 0 && self.x != "0"){
                                self.y = "9"
                                self.result = self.y
                            }else if(self.result.count > 0 && self.y == "0"){
                                self.x += "9"
                                self.result = self.x
                            }else if(self.result.count > 0 && self.y.count >= 1){
                                self.y += "9"
                                self.result = self.y
                            }
                        }){
                            ZStack {
                                Color("btn_digit")
                                Text("9")
                            }
                        }
                        Button(action: {
                            self.result = ""
                            self.action = "*"
                        }){
                            ZStack {
                                Color("btn_action")
                                Image(systemName: "multiply")
                            }
                        }
                    }.frame(height: UIScreen.main.bounds.width / 4)
                    HStack (spacing: 1){
                        Button(action: {
                            if(self.result.count == 1 && self.x == "0"){
                                self.x = "4"
                                self.result = self.x
                            }else if(self.result.count == 0 && self.x != "0"){
                                self.y = "4"
                                self.result = self.y
                            }else if(self.result.count > 0 && self.y == "0"){
                                self.x += "4"
                                self.result = self.x
                            }else if(self.result.count > 0 && self.y.count >= 1){
                                self.y += "4"
                                self.result = self.y
                            }
                        }){
                            ZStack {
                                Color("btn_digit")
                                Text("4")
                            }
                        }
                        Button(action: {
                            if(self.result.count == 1 && self.x == "0"){
                                self.x = "5"
                                self.result = self.x
                            }else if(self.result.count == 0 && self.x != "0"){
                                self.y = "5"
                                self.result = self.y
                            }else if(self.result.count > 0 && self.y == "0"){
                                self.x += "5"
                                self.result = self.x
                            }else if(self.result.count > 0 && self.y.count >= 1){
                                self.y += "5"
                                self.result = self.y
                            }
                        }){
                            ZStack {
                                Color("btn_digit")
                                Text("5")
                            }
                        }
                        Button(action: {
                            if(self.result.count == 1 && self.x == "0"){
                                self.x = "6"
                                self.result = self.x
                            }else if(self.result.count == 0 && self.x != "0"){
                                self.y = "6"
                                self.result = self.y
                            }else if(self.result.count > 0 && self.y == "0"){
                                self.x += "6"
                                self.result = self.x
                            }else if(self.result.count > 0 && self.y.count >= 1){
                                self.y += "6"
                                self.result = self.y
                            }
                        }){
                            ZStack {
                                Color("btn_digit")
                                Text("6")
                            }
                        }
                        Button(action: {
                            self.result = ""
                            self.action = "-"
                        }){
                            ZStack {
                                Color("btn_action")
                                Image(systemName: "minus")
                            }
                        }
                    }.frame(height: UIScreen.main.bounds.width / 4)
                    HStack (spacing: 1){
                        Button(action: {
                            if(self.result.count == 1 && self.x == "0"){
                                self.x = "1"
                                self.result = self.x
                            }else if(self.result.count == 0 && self.x != "0"){
                                self.y = "1"
                                self.result = self.y
                            }else if(self.result.count > 0 && self.y == "0"){
                                self.x += "1"
                                self.result = self.x
                            }else if(self.result.count > 0 && self.y.count >= 1){
                                self.y += "1"
                                self.result = self.y
                            }
                        }){
                            ZStack {
                                Color("btn_digit")
                                Text("1")
                            }
                        }
                        Button(action: {
                            if(self.result.count == 1 && self.x == "0"){
                                self.x = "2"
                                self.result = self.x
                            }else if(self.result.count == 0 && self.x != "0"){
                                self.y = "2"
                                self.result = self.y
                            }else if(self.result.count > 0 && self.y == "0"){
                                self.x += "2"
                                self.result = self.x
                            }else if(self.result.count > 0 && self.y.count >= 1){
                                self.y += "2"
                                self.result = self.y
                            }
                        }){
                            ZStack {
                                Color("btn_digit")
                                Text("2")
                            }
                        }
                        Button(action: {
                            if(self.result.count == 1 && self.x == "0"){
                                self.x = "3"
                                self.result = self.x
                            }else if(self.result.count == 0 && self.x != "0"){
                                self.y = "3"
                                self.result = self.y
                            }else if(self.result.count > 0 && self.y == "0"){
                                self.x += "3"
                                self.result = self.x
                            }else if(self.result.count > 0 && self.y.count >= 1){
                                self.y += "3"
                                self.result = self.y
                            }
                        }){
                            ZStack {
                                Color("btn_digit")
                                Text("3")
                            }
                        }
                        Button(action: {
                            self.result = ""
                            self.action = "+"
                        }){
                            ZStack {
                                Color("btn_action")
                                Image(systemName: "plus")
                            }
                        }
                    }.frame(height: UIScreen.main.bounds.width / 4)
                        HStack (spacing: 1){
                        Button(action: {
                            if(self.result.count > 0 && self.y == "0"){
                                self.x += "0"
                                self.result = self.x
                            }else if(self.result.count > 0 && self.y.count >= 1){
                                self.y += "0"
                                self.result = self.y
                            }
                        }){
                            ZStack {
                                Color("btn_digit")
                                Text("0")
                            }
                        }.frame(width: UIScreen.main.bounds.width / 2 - 0.5)
                        Button(action: {
                            if(self.x.count > 0 && !self.x.contains(".")){
                                self.x += "."
                                self.result = self.x
                            } else if(self.y != "0" && self.y.count > 0 && !self.y.contains(".")){
                                self.y += "."
                                self.result = self.y
                            }
                        }){
                            ZStack {
                                Color("btn_digit")
                                Text(".")
                            }
                        }
                        Button(action: {
                            let a:Float = Float(self.x)!
                            let b:Float = Float(self.y)!
                            
                            if(self.action == "/"){
                                if(b != 0){
                                    self.x = String(a / b)
                                } else {
                                    self.x = "Impossible divide by zero"
                                }
                                
                            } else if(self.action == "*"){
                                self.x = String(a * b)
                            } else if(self.action == "+"){
                                self.x = String(a + b)
                            } else if(self.action == "-"){
                                self.x = String(a - b)
                            }
                            
                            self.result = self.x
                            self.y = "0"
                            self.action = ""
                        }){
                            ZStack {
                                Color("btn_digit")
                                Image(systemName: "equal")
                            }
                        }
                    }.frame(height: UIScreen.main.bounds.width / 4)
                }.foregroundColor(.white).font(.system(size: 25))
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//ss
						
