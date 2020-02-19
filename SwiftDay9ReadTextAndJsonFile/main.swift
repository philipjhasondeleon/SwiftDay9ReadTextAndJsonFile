//
//  main.swift
//  SwiftDay9ReadTextAndJsonFile
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

func readTextFile(fileName: String)
{
    print(Bundle.main.bundlePath)
    if let path = Bundle.main.path(forResource: fileName, ofType: "txt")
    {
    //print(path)
    
    let str = try? String(contentsOfFile: path)
    if let s = str
    //print(str)
        {
            print(s)
        }else{
            print("Error while reading file content")
        }
    }
    
}

readTextFile(fileName: "data")
