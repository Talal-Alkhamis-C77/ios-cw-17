//
//  ContentView.swift
//  corona
//
//  Created by Shaimaa on 07/02/2022.
//

import SwiftUI


// يجب عمل هيكل وكائنات من الهيكل

let pepole = [userCovidInfo(fullname: "Adnan", area: "Kuwait", numberOfDoses: 5),
              
              userCovidInfo(fullname: "Retaj Alotabi", area: "London", numberOfDoses: 15),

              userCovidInfo(fullname: "Jacob Algadban", area: "Somewhere", numberOfDoses: 2),
              
              userCovidInfo(fullname: "Talal", area: "Kafian", numberOfDoses: 3),
              
              userCovidInfo(fullname: "Talal", area: "Kafian", numberOfDoses: 3),
              
              userCovidInfo(fullname: "Talal", area: "Kafian", numberOfDoses: 3),
              
              userCovidInfo(fullname: "Talal", area: "Kafian", numberOfDoses: 3),
              
              userCovidInfo(fullname: "Talal", area: "Kafian", numberOfDoses: 3),
              

]
struct ContentView: View {
    var body: some View {
        ZStack{
            Color.gray
                .opacity(0.3)
                .ignoresSafeArea()
            VStack{
                Image("corona")
                    .resizable()
                    .scaledToFit()
                Text("حالات كورونا الجديدة")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .padding()
                List(pepole, id: \.id) { i in
                    VStack{
            // الحالة الأولى
                    // الاسم
                        Text("الاسم: \(i.fullname)")
    // المنطقة
                        Text("المنطقة: \(i.area)")
                        // عدد الجرعات
                        Text("\(i.numberOfDoses)")

                    Divider()
                    }
                }
     
                Spacer()
                HStack{
                    Text("آخر تحديث ١٥-٣-٢٠٢٢")
                        .font(.system(size: 20, weight: .bold, design: .default))
                    Image(systemName: "repeat.circle.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5882, blue: 0.1961, alpha: 1)))
                        .font(.system(size: 30))
                }
                .padding()
                .border(Color.white, width: 5)
                .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






