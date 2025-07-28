//
//  MalaInverno.swift
//  PackRecipe
//
//  Created by Ana Carolina Evangelista on 22/07/25.
//

import SwiftUI

struct MalaInverno: View {
    let selecionado: Bool
    var body: some View {
  
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 170, height: 170)
                .foregroundStyle(.bege)
            
            Image(systemName: selecionado ? "snowflake.circle.fill" : "snowflake.circle" )
//            Image(systemName: selecionado ? "sun.max.fill" : "sun.max")
                .resizable()
                .foregroundStyle(.marçala)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    MalaInverno(selecionado: false)
}
//NavigationLink {
//    MalaViewFrio()
//} label : {
//    MalaInverno()
//}
