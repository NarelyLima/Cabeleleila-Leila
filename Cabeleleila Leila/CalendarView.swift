//
//  CalendarView.swift
//  Cabeleleila Leila
//
//  Created by Narely Lima on 17/05/22.
//

import SwiftUI

struct CalendarView: View {
    @State private var date = Date()
    
    var body: some View {
        VStack{
            DatePicker(
                    "Start Date",
                    selection: $date,
                    displayedComponents: [.date]
            ).datePickerStyle(.graphical)
                .padding(.bottom, 30)
            HStack{
                ZStack{
                    Rectangle()
                        .frame(width: 150, height: 80, alignment: .leading)
                        .foregroundColor(Color.red)
                        .cornerRadius(60)
                        .padding()
                    Text("Não fez!")
                        .foregroundColor(Color.white)
                        .font(.system(size: 30, weight: .bold))
                }
                ZStack{
                    Rectangle()
                        .frame(width: 150, height: 80, alignment: .leading)
                        .foregroundColor(Color.green)
                        .cornerRadius(60)
                        .padding()
                    Text("Fez!")
                        .foregroundColor(Color.white)
                        .font(.system(size: 30, weight: .bold))
                }
                
            }
            
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
