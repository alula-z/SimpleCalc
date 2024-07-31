//
//  ContentView.swift
//  Calculator App
//
//  Created by Alula Zeruesenay on 6/20/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var numberText = "0"
    @State var inDecimal = false
    @State var startedFormula = false
    @State var total = 0.0
    @State var totalChanged = false
    @State var formulas = ["0"]
    @State var canChange = true
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack {
                Text(numberText)
                    .frame(width: 330, height: 200, alignment: Alignment.bottomTrailing)
                    .font(.system(size: 80))
                    .foregroundColor(.white)
                
                
                // AC +/- % divide buttons
                HStack(spacing: 11){
                    Button(action:
                            {
                        numberText = "0"
                        inDecimal = false
                        formulas = ["0"]
                        total = 0
                        canChange = true
                        print("AC pressed")}) {
                            Text("AC")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .foregroundColor(Color.white)
                                .background(Color.gray)
                                .clipShape(Circle())
                        }
                    Button(action:
                            {
                        if Double(numberText)! / floor(Double(numberText)!) == 1 {
                            numberText = "\(Int(numberText)! * -1)"
                        }else{
                            numberText = "\(Double(numberText)! * -1)"
                        }
                        
                        print("+/- pressed")}) {
                            Text("+/-")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .foregroundColor(Color.white)
                                .background(Color.gray)
                                .clipShape(Circle())
                        }
                    
                    Button(action:
                            {
                        let percentVal = Double(numberText)! / 100
                        if percentVal / floor(percentVal) == 1 {
                            numberText = "\(Int(percentVal))"
                        }else{
                            numberText = "\(percentVal)"
                        }
                        print("% pressed")}) {
                            Text("%")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .foregroundColor(Color.white)
                                .background(Color.gray)
                                .clipShape(Circle())
                        }
                    
                    Button(action:
                            {
                        canChange = true
                        formulas.append(numberText)
                        formulas.append("/")
                        numberText = "0"
                        print("Divide pressed")}) {
                            Text("/")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .foregroundColor(Color.white)
                                .background(Color.orange)
                                .clipShape(Circle())
                        }
                }
                // 7 8 9 X buttons
                HStack(spacing: 11){
                    Button(action:
                            {
                        if canChange{
                            if numberText == "0" {
                                numberText = "7"
                                
                            }else {
                                numberText += "7"
                            }
                        }
                        print("7 pressed")}) {
                            Text("7")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                                .background(Color.gray.opacity(0.70))
                                .clipShape(Circle())
                        }
                    Button(action:
                            {
                        if canChange{
                            if numberText == "0" {
                                numberText = "8"
                            }else {
                                numberText += "8"
                            }
                        }
                        print("8 pressed")}) {
                            Text("8")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                                .background(Color.gray.opacity(0.70))
                                .clipShape(Circle())
                        }
                    Button(action:
                            {
                        if canChange{
                            if numberText == "0" {
                                numberText = "9"
                            }else {
                                numberText += "9"
                            }
                        }
                        print("9 pressed")}) {
                            Text("9")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                                .background(Color.gray.opacity(0.70))
                                .clipShape(Circle())
                        }
                    Button(action:
                            {
                        canChange = true
                        formulas.append(numberText)
                        formulas.append("X")
                        numberText = "0"
                        print("X pressed")}) {
                            Text("X")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .foregroundColor(Color.white)
                                .background(Color.orange)
                                .clipShape(Circle())
                        }
                }
                //4 5 6 - buttons
                HStack(spacing: 11){
                    Button(action:
                            {
                        if canChange{
                            if numberText == "0" {
                                numberText = "4"
                            }else {
                                numberText += "4"
                            }
                        }
                        print("4 pressed")}) {
                            Text("4")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                                .background(Color.gray.opacity(0.70))
                                .clipShape(Circle())
                        }
                    Button(action:
                            {
                        if canChange{
                            if numberText == "0" {
                                numberText = "5"
                            }else {
                                numberText += "5"
                            }
                        }
                        print("5 pressed")}) {
                            Text("5")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                                .background(Color.gray.opacity(0.70))
                                .clipShape(Circle())
                        }
                    Button(action:
                            {
                        if canChange{
                            if numberText == "0" {
                                numberText = "6"
                            }else {
                                numberText += "6"
                            }
                        }
                        print("6 pressed")}) {
                            Text("6")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                                .background(Color.gray.opacity(0.70))
                                .clipShape(Circle())
                        }
                    Button(action:
                            {
                        canChange = true
                        formulas.append(numberText)
                        formulas.append("-")
                        numberText = "0"
                        print("- pressed")}) {
                            Text("-")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                                .background(Color.orange)
                                .clipShape(Circle())
                        }
                }
                // 1 2 3 + buttons
                HStack(spacing: 11){
                    Button(action:
                            {
                        if canChange{
                            if numberText == "0" {
                                numberText = "1"
                            }else {
                                numberText += "1"
                            }
                        }
                        print("1 pressed")}) {
                            Text("1")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                                .background(Color.gray.opacity(0.70))
                                .clipShape(Circle())
                        }
                    Button(action:
                            {
                        if canChange{
                            if numberText == "0" {
                                numberText = "2"
                            }else {
                                numberText += "2"
                            }
                        }
                        print("2 pressed")}) {
                            Text("2")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                                .background(Color.gray.opacity(0.70))
                                .clipShape(Circle())
                        }
                    Button(action:
                            {
                        if canChange{
                            if numberText == "0" {
                                numberText = "3"
                            }else {
                                numberText += "3"
                            }
                        }
                        print("3 pressed")}) {
                            Text("3")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                                .background(Color.gray.opacity(0.70))
                                .clipShape(Circle())
                        }
                    Button(action:
                            {
                        canChange = true
                        formulas.append(numberText)
                        formulas.append("+")
                        numberText = "0"
                        inDecimal = false
                        print("+ pressed")}) {
                            Text("+")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                                .background(Color.orange)
                                .clipShape(Circle())
                        }
                }
                // 0 . = buttons
                HStack(spacing: 11){
                    Button(action:
                            {
                        if canChange{
                            if numberText == "0" {
                                
                            }else {
                                numberText += "0"
                            }
                        }
                        print("0 pressed")}) {
                            Text("     0")
                                .frame(width: 179, height: 80, alignment: Alignment.leading)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                                .background(Color.gray.opacity(0.70))
                                .clipShape(Capsule())
                        }
                    Button(action:
                            {
                        if canChange{
                            if !inDecimal {
                                if numberText == "0" {
                                    numberText = "0."
                                }else {
                                    numberText += "."
                                }
                                inDecimal = true
                            }
                        }
                        
                        print(". pressed")}) {
                            Text(".")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                                .background(Color.gray.opacity(0.70))
                                .clipShape(Circle())
                        }
                    // = button
                    Button(action:
                            {
                        //Not allow user to add to number once equal is pressed
                        canChange = false
                        formulas.append(numberText)
                        
                        //loop through the formula created
                        for i in 1 ... formulas.count - 1 {
                            print(formulas[i])
                            if formulas[i] == "+" {
                                //if first operation
                                if i == 2{
                                    total = Double(formulas[i+1])! + Double(formulas[i-1])!
                                }else{
                                    total += Double(formulas[i+1])!
                                }
                            }else if formulas[i] == "-"{
                                //if first operation
                                if i == 2{
                                    total = Double(formulas[i-1])! - Double(formulas[i+1])!
                                }else{
                                    total += Double(formulas[i+1])!
                                }
                            }else if formulas[i] == "X"{
                                //if first operation
                                if i == 2{
                                    total = Double(formulas[i+1])! * Double(formulas[i-1])!
                                }else{
                                    total = total * Double(formulas[i+1])!
                                }
                            }else if formulas[i] == "/"{
                                //if first operation
                                if i == 2{
                                    total = Double(formulas[i-1])! / Double(formulas[i+1])!
                                }else{
                                    total = total / Double(formulas[i+1])!
                                }
                            }else{
                                continue
                            }
                            
                        }
                        //if number is a whole number remove decimal ".0"
                        if total / floor(total) == 1 || total == 0{
                            numberText = "\(Int(total))"
                            print(total)
                        }
                        //else print number including decimal
                        else{
                            
                            numberText = "\(total)"
                            print(total)
                        }
                        //remove formula and put in total
                        formulas = ["\(total)"]
                        print("= pressed")}) {
                            Text("=")
                                .frame(width: 85, height: 100)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color.white)
                                .background(Color.orange)
                                .clipShape(Circle())
                        }
                    
                }
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
