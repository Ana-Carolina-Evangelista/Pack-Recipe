//
//  CriarMala.swift
//  PackRecipe
//
//  Created by Ana Carolina Evangelista on 21/07/25.
//

import SwiftUI
import CoreData

//listas da mala
var higieneFrio : [String] = []
var higieneCalor : [String] = []

var roupasFrio : [String] = []
var roupascalor : [String] = []

var sapatosFrio : [String] = []
var sapatosCalor : [String] = []

//seleção de temperatura da mala
enum Temperatura: String {
    case frio = "Frio"
    case calor = "Calor"
    case nenhum = "Nenhum"
}

struct CriarMala: View {
    @State var temperatura: Temperatura = .nenhum
    //.rowValue
    var body: some View {

        //navegação de tela (botão Criar)
        NavigationStack{
            ZStack{
                Color.backGround
                    .ignoresSafeArea()
                //Titulo e botão Criar
                VStack{
                    HStack (spacing: 90){
                        Text("Nova Mala")
                            .padding(.top, 160)
                            .bold()
                            .font(.system(size: 40))
                            .foregroundStyle(.marçala)
                        //navegação botão criar
                      
                        NavigationLink {
                            MalaView()
                        } label : {
                            botaoCriar()
                        }
                        .padding(.bottom, 50)
                        .disabled(temperatura == .nenhum)
                    }
                    
                    //Elementos da tela (barra de espaço, titulos da página, botões calor e frio)
                    BarraDeNome()
                    
                    Text("Temperatura da viagem:")
                        .padding()
                        .padding(.trailing, 120)
                        .bold()
                        .font(.system(size:20))
                        .foregroundStyle(.marçala)
                    
                    //navegação botões frio e calor
                    HStack(spacing: 20 ){
                        
                        Button {
                            temperatura = .calor
                        } label: {
                            MalaCalor(selecionado: temperatura == .calor)
                        }
                        Button {
                            temperatura = .frio
                        } label: {
                            MalaInverno(selecionado: temperatura == .frio)
                        }
                    }
                    
                    HStack(spacing: 160){
                        Text("Calor")
                            .bold()
                            .foregroundStyle(.marçala)
                        Text("Frio")
                            .bold()
                            .foregroundStyle(.marçala)
                    }
                    Spacer()
                    
                }
                
            }
            
            .ignoresSafeArea()
        }
    }
}
#Preview {
    CriarMala()
}
