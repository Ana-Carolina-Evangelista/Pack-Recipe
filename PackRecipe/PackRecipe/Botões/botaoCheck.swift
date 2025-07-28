//
//  botaoCheck.swift
//  PackRecipe
//
//  Created by Ana Carolina Evangelista on 22/07/25.
//

import SwiftUI

struct botaoCheck: View {
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 350, height: 55)
                .foregroundStyle(.bege)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 40, height: 40)
                .foregroundStyle(.white)
                .padding(.trailing, 280)
            
        }
    }
}

#Preview {
    botaoCheck()
}
