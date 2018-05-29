//
//  ViewController.swift
//  Pods
//
//  Created by Abe Mowad on 5/8/18.
//  Copyright © 2018 Abe Mowad. All rights reserved.
//

import UIKit
import GeoFire

class LogInView: UIViewController
{
    @IBOutlet weak var owlsArt: UIImageView!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    let apiStringHome = "http://www.zillow.com/webservice/GetSearchResults.htm?zws-id=X1-ZWz1gdvcuzh9fv_376md&address=804-Clearview-Ln&citystatezip=93401"

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        owlsArt.image = UIImage(named: "owls.png")
        owlsArt.isHidden = false
        usernameText.placeholder = "username"
        passwordText.placeholder = "password"
        
        let session = URLSession(configuration: URLSessionConfiguration.default)
        
        let request = URLRequest(url: URL(string: apiStringHome)!)
        
        let task: URLSessionDataTask = session.dataTask(with: request)
        { (receivedData, response, error) -> Void in
            
            if let data = receivedData {
                
                // uncomment to print raw response
                let rawDataString = String(data: data, encoding: String.Encoding.utf8)
                print(rawDataString!)
                
                /*var xmlResponse : [String:AnyObject]?
                
                do {
                    xmlResponse = try XMLSerialization.xmlObject(with: data, options: XMLSerialization.ReadingOptions.allowFragments) as? [String:AnyObject]
                    print("jsonResponse type: \(type(of: xmlResponse))")
                }
                catch {
                    print("Caught exception")
                }
                
                // print dictionary after serialization
                //                print(jsonResponse!)
                
                // check high-level keys for collections
                print()
                for (key,value) in jsonResponse! {
                    if value is [String:AnyObject] {
                        print("\(key) is a Dictionary")
                    }
                    else if value is [AnyObject] {
                        print("\(key) is an Array")
                    }
                    else {
                        print(type(of: value))
                    }
                }
                //}
                
                print("\nDrill down of JSON structure:")
                self.jsonDrillDown(json: jsonResponse!, indent: "")*/
            }
        }
        
        task.resume()
    }
    
    func jsonDrillDown(json : Any, indent: String) {
        let ourIndent = indent + "\t"
        
        if json is Dictionary<String,Any> {
            let dict = json as! Dictionary<String,Any>
            for (key, value) in dict {
                if value is Dictionary<String, Any> {
                    print("\(ourIndent)\(key) is a dictionary ->")
                    jsonDrillDown(json: value, indent: ourIndent)
                } else if value is Array<Any> {
                    let array = value as! Array<Any>
                    let first = array.first
                    if first is Dictionary<String,Any> {
                        print("\(ourIndent)\(key) array -> type is a dictionary ->")
                        jsonDrillDown(json: first!, indent: ourIndent)
                    }
                } else {
                    //print("\(ourIndent)\(key) : \(type (of: value))")
                    print("\(ourIndent)\(key) : " + convertToSwiftName(value: value))
                }
            }
        } else if json is Array<Any> {
            let array = json as! Array<Any>
            let first = array.first
            if first is Dictionary<String,Any> {
                print("\(ourIndent)array -> type is a dictionary ->")
                jsonDrillDown(json: first!, indent: ourIndent)
            }
        }
        else {
            //print("\(ourIndent)type: \(type (of: json))")
            print("\(ourIndent)type: " + convertToSwiftName(value: json))
        }
    }
    
    func convertToSwiftName(value : Any) -> String {
        switch value {
        case is NSString:
            return "String"
        case is NSNumber:
            return "Number"
        case is NSNull:
            return "Null"
        default:
            return "****** something else! \(type(of: value))"
        }
    }


    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToLogIn(segue: UIStoryboardSegue)
    {
        
    }

}

