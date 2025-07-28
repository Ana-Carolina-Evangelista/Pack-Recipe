//
//  BarraDeNome.swift
//  PackRecipe
//
//  Created by Ana Carolina Evangelista on 22/07/25.
//

import SwiftUI

struct BarraDeNome: View {
    @State var nome: String = ""
    
    var body: some View {
//        VStack(alignment: .leading) {
//                    TextField("nome da mala", text: $nome)
//                }
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 360, height: 55)
                .foregroundStyle(.bege)
//            Text("Nome da mala")
//                .padding(.trailing, 200)
//                .foregroundStyle(.rosa2)
            
            VStack(alignment: .leading) {
                        TextField("nome da mala", text: $nome)
                    .padding(.leading, 40)
                    }
        }
    }
}

#Preview {
    BarraDeNome()
}
