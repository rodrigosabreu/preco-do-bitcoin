//
//  ViewController.swift
//  preco do bitcoin
//
//  Created by Rodrigo Abreu on 30/11/2017.
//  Copyright © 2017 Rodrigo Abreu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let url = URL(string: "https://blockchain.info/pt/ticker"){
            let tarefa = URLSession.shared.dataTask(with: url) { (dados, requisicao, erro) in
                
                if erro == nil{
                    print("Sucesso ao fazer a consulta do preço.")
                }else{
                    print("Erro ao fazer a consulta do preço.")
                }
                
            }
            
            tarefa.resume()
            
        }/*fim do if*/
        
        
        
    }

    
    


}

