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

//readTextFile(fileName: "data")
func readJSONUserInfo(fileName: String)
{
    let filePath = Bundle.main.url(forResource: fileName, withExtension: "json")
    
    guard let path = filePath else{
        print("Invalid File path found")
        return
    }
    
    guard let data = try? Data(contentsOf: path) else {
        print("Error while read Data from URL")
        return
    }
    
    guard let json = try? JSONSerialization.jsonObject(with: data, options:[]) else {
            print("Error while reading JSON Data from file")
            return
    }
    //print(json)
    
    if let userDictionary = json as? [String: Any]
    {
        //print(userDictionary)
        let id = userDictionary["id"] ?? "No ID Found"
        print(id)
        
        //Like wise fetch all other value except address and company as it's another dictionary
        if let addressDictionary = userDictionary["address"] as? [String: Any]
        {
            print(addressDictionary["city"]!)
        }
    }
    
}

readJSONUserInfo(fileName: "SingleUser")
