//
//  DetailView.swift
//  AppFurniture
//
//  Created by Лина Вертинская on 21.08.22.
//

import SwiftUI

struct DetailView: View {

    var item: Model
    @State private var count = 0

    var body: some View {
        ZStack {
            VStack {
                Spacer()

                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                Spacer()

                detail()
            }
        }
        .ignoresSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("background"))
    }

    @ViewBuilder
    private func detail() -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.white)

            VStack {

                HStack {

                    VStack(alignment: .leading) {

                        Text(item.title)
                            .font(.system(.title2, design: .rounded))
                            .fontWeight(.bold)

                        VStack(alignment: .leading) {
                            Text("Size: 120/80/120")
                            Text("Weight: 45kg")
                        }
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 230, alignment: .topLeading)
                    .padding()

                    Spacer()

                    VStack {

                        HStack {
                            ForEach(1..<5) { _ in
                                Image(systemName: "star.fill")
                            }

                            Image(systemName: "star")
                        }

                        Text("143 reviews")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .padding(.top, 3)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 230, alignment: .topTrailing)
                    .padding(.top, 25)
                    .padding(.trailing)
                }

                HStack {
                    Text(item.price)
                        .font(.system(.title2, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.gray)

                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.gray, lineWidth: 2)
                            }
                            .foregroundColor(.clear)

                        HStack {
                            Button {
                                count -= 1
                            } label: {
                                Text("-")
                            }


                            Spacer()

                            Text(String(count))

                            Spacer()

                            Button {
                                count += 1
                            } label: {
                                Text("+")
                            }

                        }
                        .font(.title3)
                        .foregroundColor(.gray)
                        .padding([.leading, .trailing])
                    }
                    .padding()

                    Button {
                        print("Added to your cart")
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.accentColor)
                            Text("Cart")
                                .foregroundColor(.white)
                        }
                        .padding(10)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 70)
                .padding([.leading, .trailing, .bottom])
            }
        }
        .frame(height: 230)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: Model(title: "Gray chair", price: "P15000", imageName: "GrayChair"))
    }
}
