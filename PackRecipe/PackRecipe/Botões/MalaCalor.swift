//
//  MalaCalor.swift
//  PackRecipe
//
//  Created by Ana Carolina Evangelista on 22/07/25.
//

import SwiftUI

struct MalaCalor: View {
    let selecionado: Bool
    var body: some View {
       
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 170, height: 170)
                .foregroundStyle(.bege)
                
            
            Image(systemName: selecionado ? "sun.max.fill" : "sun.max" )
                .resizable()
                .foregroundStyle(.marçala)
                .frame(width: 110, height: 110)
        
        }
    }
}

#Preview("Selecionado") {
    MalaCalor(selecionado: true)
}

#Preview("Não selecionado") {
    MalaCalor(selecionado: false)
}
//NavigationLink {
//    MalaViewCalor()
//} label : {
//    MalaCalor()
//}
