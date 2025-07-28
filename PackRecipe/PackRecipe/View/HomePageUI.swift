//
//  HomePageUI.swift
//  PackRecipe
//
//  Created by Ana Carolina Evangelista on 21/07/25.
//

import SwiftUI

struct HomePageUI: View {
    var body: some View {
        NavigationStack{
            
            //cor do fundo
            ZStack{
            Color.backGround
                .ignoresSafeArea()
                VStack{
                    HStack(spacing: 210) {
                        Text("Malas")
                            .padding(.top)
                            .bold()
                            .font(.system(size: 40))
                            .foregroundStyle(.marçala)
                       
                        //navegação dos botão +
                        NavigationLink {
                            CriarMala()
                        } label : {
                            bota_oPlus(mais: true)

                        }.padding(.top)

                    //adicionei um .top, n sei se ta certo
                    }.padding(.top)
                    
                    //navegação do botão de mala
                    NavigationLink {
                        MalaView()
                    } label : {
                        botaoMain()
                            
                    }
                    Spacer()
                }
                    
                        
                        
                    
            }
        }
    }
}
    
    #Preview {
        HomePageUI()
    }

