//
//  botãoPlus.swift
//  PackRecipe
//
//  Created by Ana Carolina Evangelista on 21/07/25.
//

import SwiftUI

struct bota_oPlus: View {
    //to tentando criar a funcionalidade do botao de adicionar outro item na lista
    let mais: Bool
    var body: some View {
        
            Image(systemName: "plus.app.fill")
            .resizable()
            .foregroundStyle(.marçala)
            .frame(width: 35, height: 35)
        
//exemplo: botao
 //       Button {
//            temperatura = .calor
//        } label: {
//            MalaCalor(selecionado: temperatura == .calor)
//        }
            
        
        
    }
}

#Preview {
    bota_oPlus(mais: true)
}
