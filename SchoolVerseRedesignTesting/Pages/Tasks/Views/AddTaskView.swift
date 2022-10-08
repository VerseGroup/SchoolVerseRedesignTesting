//
//  AddTaskView.swift
//  SchoolVerseRedesignTesting
//
//  Created by Hackley on 10/6/22.
//

import SwiftUI

struct AddTaskView: View {
    @State var dateChosen: Date
    @State var descriptionText: String = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ZStack {
               ColorfulBackgroundView()
                
                VStack {
                    Spacer()
                        .frame(height: 65)
                    
                    name
                    
                    classPicker
                    
                    description
                    
                    date
                    
                    Spacer()
                    
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Text("Submit")
                            .padding()
                            .padding(.horizontal)
                            .glassCardFull()
                    }
                    
                    Spacer()
                }
            }
            .navigationTitle("Add a Task")
            .preferredColorScheme(.dark)
        }
    }
}

extension AddTaskView {
    var name: some View {
        Group {
            HeaderLabel(name: "Task Name")
                .padding(.horizontal, 5)
            
            CustomTextFieldView(placeholder: "Enter you task name", text: "")
                .padding(.horizontal)
        }
    }
    
    var classPicker: some View {
        Group {
            HeaderLabel(name: "Class")
                .padding(.horizontal, 5)
            
            CustomTextFieldView(placeholder: "Enter you class", text: "")
                .padding(.horizontal)
        }
    }
    
    var description: some View {
        Group {
            HeaderLabel(name: "Description")
                .padding(.horizontal, 5)
            
            CustomTextFieldView(placeholder: "Enter you task's description", text: "")
                .padding(.horizontal)
        }
    }
    
    var date: some View {
        Group {
            HeaderLabel(name: "Due Date")
                .padding(.horizontal, 5)
            
            DatePicker(selection: $dateChosen, in: ...Date()) {
                Text("Pick your due date")
                    .font(.system(size: 15))
            }
            .padding()
            .glass()
            .padding(.horizontal)
        }
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView(dateChosen: Date.now)
    }
}
