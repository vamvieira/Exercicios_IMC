//
//  ViewController.swift
//  Exemplo_MVC
//
//  Created by Usuário Convidado on 11/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtAtleta: UITextField!
    @IBOutlet weak var txtPeso: UITextField!
    @IBOutlet weak var txtAltura: UITextField!
    @IBOutlet weak var txtImc: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calcular(_ sender: Any) {
        let p = Pessoa()
                p.nome = txtAtleta.text
                
                if let textoPeso = txtPeso.text {
                    if let valorP = Float(textoPeso) {
                        p.peso = valorP
                        if let textoAltura = txtAltura.text {
                            if let valorA = Float(textoAltura){
                                p.altura = valorA
                                p.calcular()
                                txtImc.text = "\(p.imc!)"
                            }else{
                                txtImc.text = "0"
                                print("Digite apenas números para a altura")
                            }
                        }else{
                            txtImc.text = "0"
                        }
                    }else{
                        txtImc.text = "0"
                        print("Digite apenas números para o peso")
                    }
                }else{
                    txtImc.text = "0"
                }
                
                
                // p.peso = Float(txtPeso.text!)
                //p.altura = Float(txtAltura.text!)
                //p.calcularIMC()
                //txtImc.text = String(p.imc)
    }
    

}

