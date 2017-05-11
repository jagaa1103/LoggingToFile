//
//  Logger.swift
//  LoggingToFile
//
//  Created by Enkhjargal Gansukh on 10/05/2017.
//  Copyright © 2017 Enkhjargal Gansukh. All rights reserved.
//

import Foundation


class Logger: NSObject {
    static let instance = Logger()
    let filer: Filer
    override init() {
        filer = Filer()
        super.init()
    }
    
    func write(text: String) {
        if let file = filer.checkFile() {
            try? text.write(to: file, atomically: false, encoding: String.Encoding.utf8)
        }
    }
}
