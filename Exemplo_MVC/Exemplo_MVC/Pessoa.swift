//
//  Pessoa.swift
//  Exemplo_MVC
//
//  Created by Usuário Convidado on 11/04/23.
//

import Foundation

class Pessoa{
    
    var nome:String!
    var peso: Float!
    var altura:Float!
    var imc: Float!
    
    init(){
        self.nome = ""
        self.peso = 0
        self.altura = 0
        self.imc = 0
    }
    
    func calcular(){
        imc = peso / (altura * altura)
    }
}
