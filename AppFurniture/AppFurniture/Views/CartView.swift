//
//  CardView.swift
//  AppFurniture
//
//  Created by Лина Вертинская on 21.08.22.
//

import SwiftUI

struct CartView: View {

    var item: Model
    @State private var isTapped = false

    var body: some View {
        VStack(alignment: .leading) {
            Text(item.title)
                .font(.system(.headline, design: .rounded))
                .foregroundColor(.accentColor)

            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)

            HStack {
                Text(item.price)
                    .font(.system(size: 15, weight: .semibold, design: .rounded))
                    .foregroundColor(.gray)

                Spacer()

                Image(systemName: isTapped ? "heart.fill" : "heart")
                    .onTapGesture {
                        isTapped = true
                    }
            }
        }
        .padding()
        .background(Color.white)
        .frame(width: 172, height: 230)
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(item: Model(title: "Gray chair", price: "P15000", imageName: "GrayChair"))
    }
}
