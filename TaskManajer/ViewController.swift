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
import ReachabilitySwift




class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        
       /*DispatchQueue.background(delay: 3.0, background: {
            print("voy a descargar en segundo plano")
        
            
        }, completion: {
            print("he terminado de descargar en segudno plano");
        })
        
       /* DispatchQueue.background(background: {
            // do something in background
        }, completion:{
            // when background job finished, do something in main thread
        })
        
        DispatchQueue.background(delay: 3.0, completion:{
            // do something in main thread after 3 seconds
        })*/
        
        //declare this property where it won't go out of scope relative to your listener
              
        
     /*   BackendAPIManager.sharedInstance.alamoFireManager.upload(<#T##data: Data##Data#>, to: <#T##URLConvertible#>)(multipartFormData: { (multipartFormData) in
            print("tarea en background");
            
            
            }*/
        // estado sin conexion
        // voy guardando las cosas para luego mandar
        
        */
    
        
        
  
        
        
        if Reachibility.isConnectedToNetwork() == true
        {
            print("Internet Connection Available!")
        }
        else
        {
            print("Internet Connection not Available!")
        }
        
        
        
        
        // FUNCION GET
       
        
      /*  Alamofire.request("https://www.loquatsolutions.com/detres/detres/api/mostrarPedidos").responseData { (resData) -> Void in
            print(resData.result.value!)
            let strOutput = String(data : resData.result.value!, encoding : String.Encoding.utf8)
            print("respuesta al GET con https")
            print(strOutput!)
        }
       */
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func descarga(){
        let urlstring = "https://www.loquatsolutions.com/detres/detres/api/modificarNombreProducto"
        
        // AQUI PONES LOS PARAMETROS QUE TU QUIERAS ESTOS NO SIRVEN DE NADA
        /* let parameters:  [String: Any] = [
         "id" : "xxxxx",
         "client_secret" : "xxxxx",
         "device_token" : "xxxx",
         "fullname" : "xxxxx",
         "gender": "xxx"
         ]*/
        
        let parameters : [String: Any] = [
            "id":"10",
            "nombre":"SWITFeell"
            
        ]
        
        let headers: HTTPHeaders = [
            "Authorization": "ayozeapikey123456==",
            "Accept": "application/json"
        ]
        
        Alamofire.request(urlstring, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: nil).responseJSON { response in
            print("respuesta al POST con https")
            print(response)
        }
        
    }
    
    
    
    

}



extension DispatchQueue {
    
    static func background(delay: Double = 0.0, background: (()->Void)? = nil, completion: (() -> Void)? = nil) {
        DispatchQueue.global(qos: .background).async {
            background?()
            if let completion = completion {
                DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: {
                    completion()
                })
            }
        }
    }
    
}
