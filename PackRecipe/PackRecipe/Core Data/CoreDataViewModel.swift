//
//  CoreDataViewModel.swift
//  PackRecipe
//
//  Created by Ana Carolina Evangelista on 23/07/25.
//

import Foundation
import CoreData
import SwiftUI

class CoreDataViewModel: ObservableObject {
    @Published public var Mala: [Mala] = []
    
    public func getMala() {
        Mala = CoreDataModel.shared.fetchMala()
    }
    
    public func CreateMala(titulo: String, temperatura: String) {
        let newMala: Mala =
        CoreDataModel.shared.createMala (titulo: titulo, temperatura: temperatura)
        self.Mala.append(newMala)
    }
    
    public func deleteMala(Mala: Mala) {
        CoreDataModel.shared.deleteMala(Mala: Mala)
    }
    //entidade mala'
    
    public func getHigiene() -> [Higiene] {
        return CoreDataModel.shared.fetchHigiene()
    }
    
    public func CreateHigiene(itemHigiene: String) -> Higiene {
        let newHigiene =
        CoreDataModel.shared.createHigiene (itemHigiene: itemHigiene)
        
        return newHigiene
    }
    
    public func deleteHigiene(Higiene: Higiene) {
        CoreDataModel.shared.deleteHigiene(higiene: Higiene)
    }
    //entidade Higiene
    
    public func getRoupas() -> [Roupas] {
        return CoreDataModel.shared.fetchRoupas()
    }
    
    public func createRoupas(itemRoupas: String) -> Roupas {
        let newRoupas =
        CoreDataModel.shared.createRoupas(itemRoupas: itemRoupas)
     
        return newRoupas
    }
    
    public func deleteRoupas(Roupas: Roupas) {
        CoreDataModel.shared.deleteRoupas(roupas: Roupas)
    }
    //entidade Roupas
    
    public func getSapatos() -> [Sapatos] {
        return CoreDataModel.shared.fetchSapatos()
    }
    
    public func CreateSapatos(itemSapatos: String) -> Sapatos {
        let newSapatos =
        CoreDataModel.shared.createSapatos(itemSapatos: itemSapatos)
     
        return newSapatos
    }
    
    public func deleteSapatos(Sapatos: Sapatos) {
        CoreDataModel.shared.deleteSapatos(sapatos: Sapatos)
    }
    //entidade Sapatos
}


