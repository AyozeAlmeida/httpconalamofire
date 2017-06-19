//
//  ViewController.swift
//  TaskManajer
//
//  Created by Loquat Solutions on 18/6/17.
//  Copyright © 2017 MHP. All rights reserved.
//

import UIKit

import Alamofire
import SwiftyJSON



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // FUNCION GET
        Alamofire.request("http://www.loquatsolutions.com/detres/detres/api/mostrarPedidos").responseData { (resData) -> Void in
            print(resData.result.value!)
            let strOutput = String(data : resData.result.value!, encoding : String.Encoding.utf8)
            print(strOutput!)
        }
       
        
        
        
       
        // FUNCION POST
    
        let urlstring = "http://www.loquatsolutions.com/detres/detres/api/pruebaAyo"
       
        // AQUI PONES LOS PARAMETROS QUE TU QUIERAS ESTOS NO SIRVEN DE NADA
        let parameters:  [String: Any] = [
            "client_id" : "xxxxxx",
            "client_secret" : "xxxxx",
            "device_token" : "xxxx",
            "fullname" : "xxxxx",
            "gender": "xxx"
        ]
        
        
     
    
        Alamofire.request(urlstring, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil).responseJSON { response in
            print(response)
        }
        
        
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

