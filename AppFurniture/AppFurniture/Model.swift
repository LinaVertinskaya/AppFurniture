//
//  Model.swift
//  AppFurniture
//
//  Created by Лина Вертинская on 21.08.22.
//

import Foundation


struct Model: Identifiable {

    let id = UUID().uuidString
    let title: String
    let price: String
    let imageName: String

    static let chairs = [
        Model(title: "Begie chair", price: "P7000", imageName: "BegieChair"),
        Model(title: "Gray chair", price: "P15000", imageName: "GrayChair"),
        Model(title: "Padded Stool", price: "P6800", imageName: "PaddedStool")
    ]

    static let sofas = [
        Model(title: "Yellow sofa", price: "P10500", imageName: "YellowSofa"),
        Model(title: "Black sofa", price: "P2500", imageName: "BlackSofa"),
        Model(title: "Emeraid sofa", price: "P10500", imageName: "EmeraidSofa")
    ]
}
