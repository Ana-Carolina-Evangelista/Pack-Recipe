//
//  botaoLooks.swift
//  PackRecipe
//
//  Created by Ana Carolina Evangelista on 22/07/25.
//

import SwiftUI

struct botaoLooks: View {
    var body: some View {
        
        ZStack{
            Capsule()
                .frame(width: 70, height: 35)
                .foregroundStyle(.marçala)
            Text("Looks")
                .bold()
                .foregroundStyle(.backGround)
        }
    }
}
#Preview {
    botaoLooks()
}
