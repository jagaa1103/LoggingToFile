//
//  Filler.swift
//  LoggingToFile
//
//  Created by Enkhjargal Gansukh on 10/05/2017.
//  Copyright © 2017 Enkhjargal Gansukh. All rights reserved.
//

import Foundation

class Filer: NSObject {
    
    override init() {
        super.init()
    }
    
    var file: URL? = nil
    func createFile(name: String) -> URL? {
        guard let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first else { return nil }
        guard let writePath = NSURL(fileURLWithPath: path).appendingPathComponent("Logs") else { return nil }
        try? FileManager.default.createDirectory(atPath: writePath.path, withIntermediateDirectories: true)
        file = writePath.appendingPathComponent(name + ".txt")
        return file
    }
    
    func write(text: String) {
        if let file = checkFile() {
            try? text.write(to: file, atomically: false, encoding: String.Encoding.utf8)
        }
    }
    
    func checkFile() -> URL? {
        if let f = file {
            return f
        } else {
            return createFile(name: getDate())
        }
    }
    
    func getDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd-hh_mm_ss"
        return dateFormatter.string(from: Date())
    }
}
