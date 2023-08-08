//
//  Constants.swift
//  testApp
//
//  Created by Akarsh Ram on 08/08/23.
//

import UIKit

class Constant
{
    static let shared = Constant()
    private init(){}
 
    let error_msg = "Something went wrong, Please try again..."
    let baseUrl = "https://run.mocky.io/v3/69ad3ec2-f663-453c-868b-513402e515f0"
    let deviceType = "ios"
    var deviceID  = "123456"
    func categoryColor(colorIndex:Int) -> UIColor{
        
        let color: UIColor
        
        switch colorIndex {
        case 0:
            color = UIColor(red: 247/255, green: 231/255, blue: 231/255, alpha: 1.0)
        case 1:
            color = UIColor(red: 247/255, green: 243/255, blue: 205/255, alpha: 1.0)
        case 2:
            color = UIColor(red: 250/255, green: 241/255, blue: 241/255, alpha: 1.0)
        case 3:
            color = UIColor(red: 231/255, green: 220/255, blue: 242/255, alpha: 1.0)
        case 4:
            color = UIColor(red: 253/255, green: 243/255, blue: 220/255, alpha: 1.0)
        default:
            color = .clear
        }
        return color
    }
  
}

