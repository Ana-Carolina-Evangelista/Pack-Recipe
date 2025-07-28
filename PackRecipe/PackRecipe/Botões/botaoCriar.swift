//
//  botaoCriar.swift
//  PackRecipe
//
//  Created by Ana Carolina Evangelista on 21/07/25.
//

import SwiftUI

struct botaoCriar: View {
    var body: some View {
        
        ZStack{
            Capsule()
                .frame(width: 70, height: 35)
                .foregroundStyle(.marçala)
            Text("Criar")
                .bold()
                .foregroundStyle(.backGround)
        }
    }
}

#Preview {
    botaoCriar()
}
