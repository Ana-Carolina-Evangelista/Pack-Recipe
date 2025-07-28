//
//  MalaView.swift
//  PackRecipe
//
//  Created by Ana Carolina Evangelista on 21/07/25.
//

import SwiftUI

struct MalaView: View {
    @State var mostrarSheet = false
    @State var novoItem: String = ""
    //    let temperatura: Temperatura
    var body: some View {
        
        ZStack{
            Color.backGround
                .ignoresSafeArea()
            //Titulo e botão Criar
            VStack{
                HStack(spacing: 30){
                    Text("Nome da Mala")
                        .padding(.top, 110)
                        .bold()
                        .font(.system(size: 40))
                        .foregroundStyle(.marçala)
                    
                    botaoLooks()
                }
                
                .padding()
                HStack{
                    Text("Higiene")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundStyle(.marçala)
                        .padding(.trailing, 180)
                    Button {
                        mostrarSheet.toggle()
                    }
                    label: {
                        bota_oPlus(mais: true)
                    }
                }
                
                botaoCheck()
                
                    .padding()
                HStack{
                    Text("Roupas")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundStyle(.marçala)
                        .padding(.trailing, 180)
                    bota_oPlus(mais: true)
                }
                
                botaoCheck()
                
                    .padding()
                HStack{
                    Text("Sapatos")
                        .bold()
                        .font(.system(size: 30))
                        .foregroundStyle(.marçala)
                        .padding(.trailing, 180)
                    bota_oPlus(mais: true)
                }
                botaoCheck()
                
                Spacer()
                //                    Text("Nome da Mala")
                //                        .bold()
                //                        .font(.system(size: 40))
                //                        .foregroundStyle(.marçala)
            }
            
        }
        .sheet(isPresented: $mostrarSheet){
            HStack{
                Image(systemName: "chevron.down" )
                    .bold()
                    .foregroundStyle(.marçala)
                      botaoCriar()
                    .padding(.bottom, 50)
                    .padding(.leading, 275)
            }
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 360, height: 55)
                    .foregroundStyle(.bege)
                    .padding(.bottom, 550)
                TextField("Novo Item", text: $novoItem)
                    .padding(.leading, 40)
                    .padding(.bottom, 550)
               
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    MalaView()
}

//exemplo: botao
 //       Button {
//            temperatura = .calor
//        } label: {
//            MalaCalor(selecionado: temperatura == .calor)
//        }
