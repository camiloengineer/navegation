//
//  ViewController.swift
//  Navegacion
//
//  Created by Camilo Gonzalez on 01-05-22.
//

import UIKit

class ViewController: UIViewController {
    
    var myColor: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func botonNegro(_ sender: Any) {
        
        print("Soy el botón negro")
        myColor = "Negro"
        performSegue(withIdentifier: "VCColor", sender: self)
    }
    

    @IBAction func botonRosa(_ sender: Any) {
        
        print("Soy el botón rosa")
        myColor = "Rosa"
        performSegue(withIdentifier: "VCColor", sender: self)
        
    }
    
    @IBAction func botonAzul(_ sender: Any) {
        
        print("Soy el botón azul")
        myColor = "Azul"
        performSegue(withIdentifier: "VCColor", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destino = segue.destination as? ViewControllerColor{
            destino.titulo = myColor
        }
        
        
        /*
        if myColor == "VCNegro" {
            
            if let destino = segue.destination as? ViewControllerNegro{
                
                destino.titulo = "Negro"
                
            }
            
        }
        
        if segue.identifier == "VCRosa" {
            
            if let destino = segue.destination as? ViewControllerRosa{
                
                destino.titulo = "Rosa"
                
            }
        }   
        
        if segue.identifier == "VCAzul" {
            
            if let destino = segue.destination as? ViewControllerAzul{
                
                destino.titulo = "Azul"
                
            }
            
        }*/
        
        
    }
}

