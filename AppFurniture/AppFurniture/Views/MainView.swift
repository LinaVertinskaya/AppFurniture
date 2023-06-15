//
//  MainView.swift
//  AppFurniture
//
//  Created by Лина Вертинская on 21.08.22.
//

import SwiftUI

struct MainView: View {

    @State private var text = ""

    var body: some View {

        NavigationView {

            ScrollView {

                header()

                Text("Chair")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(Model.chairs) { item in

                            NavigationLink {
                                DetailView(item: item)
                            } label: {
                                CartView(item: item)
                            }
                        }
                    }
                    .padding(.leading)
                }

                Text("Sofas")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(Model.sofas) { item in

                            NavigationLink {
                                DetailView(item: item)
                            } label: {
                                CartView(item: item)
                            }
                        }
                    }
                    .padding(.leading)
                }
            }
            .background(Color("background"))
        }
    }

    @ViewBuilder
    private func header() -> some View {
        VStack(spacing: 18) {

            HStack {
                Image(systemName: "magnifyingglass")

                TextField("Search...", text: $text)

            }
            .padding(10)
            .background(Color.white)
            .cornerRadius(10)

            Button {
                print("filter")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                    Image(systemName: "slider.horizontal.3")
                }
            }
        }
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
