//
//  Package.swift
//  Boost
//
//  Created by Ondrej Rafaj on 24/11/2016.
//  Copyright © 2016 manGoweb UK Ltd. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "Boost",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1, minor: 1),
        //.Package(url: "https://github.com/OpenKitten/MongoKitten.git", majorVersion: 2, minor: 0),
        .Package(url: "https://github.com/vapor/mongo-provider.git", majorVersion: 1, minor: 1)
    ],
    exclude: [
        "Config",
        "Database",
        "Localization",
        "Public",
        "Resources",
        "Tests",
    ]
)

