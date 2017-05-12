//
//  Logger.swift
//  LoggingToFile
//
//  Created by Enkhjargal Gansukh on 10/05/2017.
//  Copyright © 2017 Enkhjargal Gansukh. All rights reserved.
//

import Foundation

public class Logger: NSObject {
    public static let instance = Logger()
    let filer: Filer
    
    public override init() {
        filer = Filer()
        super.init()
    }
    
    public func write(text: String) {
        if let file = filer.checkFile() {
            print(file)
            print(text)
            try? text.write(to: file, atomically: false, encoding: String.Encoding.utf8)
        }
    }
}
