//
//  CoreDataControlerMala .swift
//  PackRecipe
//
//  Created by Ana Carolina Evangelista on 25/07/25.
//

import Foundation
import CoreData

class CoreDataModel {
    public static let shared = CoreDataModel()
    
    private let persistentContainer: NSPersistentContainer
    
    private var viewContext: NSManagedObjectContext {
        persistentContainer.viewContext
    }
    private init() {
        persistentContainer = NSPersistentContainer(name: "Modelo")
        persistentContainer.loadPersistentStores(completionHandler: { _,
            error in
            if let error = error {
                fatalError("[ERROR]: Could not load CoreData stack(\(error.localizedDescription))")
            }
        })
    }
    
    public func saveContext() {
        if viewContext.hasChanges {
            do {
                try viewContext.save()
            }
            catch {
                print("[WARNING]: Failed to save container view context (\(error.localizedDescription))")
            }
        }
    }
    public func fetchMala() -> [Mala] {
        let fetchRequest: NSFetchRequest<Mala> =
        Mala.fetchRequest()
        
        do {
            let result = try viewContext.fetch(fetchRequest)
            return result
        }
        catch {
            print("[WARNING]: Failed to fetch Mala (\(error.localizedDescription))")
            return []
        }
    }
    public func createMala(itens: String = "", titulo: String = "", temperatura: String) ->
//    [Higiene], [Sapatos], [Roupas]
    Mala {
        let Mala: Mala =
        Mala(context: viewContext)
        Mala.titulo = titulo
        Mala.temperatura = temperatura
        
        saveContext()
        
        return Mala
    }
    public func deleteMala(Mala:
                           Mala) {
        viewContext.delete(Mala)
        saveContext()
    }
    //entidade Mala
    
    
    //Item higiene
    public func fetchHigiene() -> [Higiene] {
        let fetchRequest: NSFetchRequest<Higiene> =
        Higiene.fetchRequest()
        
        do {
            let result = try viewContext.fetch(fetchRequest)
            return result
        }
        catch {
            print("[WARNING]: Failed to fetch Higiene (\(error.localizedDescription))")
            return []
        }
    }
    public func createHigiene(itemHigiene: String) ->
    Higiene {
        let Higiene: Higiene =
        Higiene(context: viewContext)
        Higiene.itemHigiene = itemHigiene
        saveContext()
        
        return Higiene
    }
    public func deleteHigiene(higiene: Higiene) {
        viewContext.delete(higiene)
        saveContext()
    }
    //entidade Higiene
    
    //item roupa
    public func fetchRoupas() -> [Roupas] {
        let fetchRequest: NSFetchRequest<Roupas> =
        Roupas.fetchRequest()
        
        do {
            let result = try viewContext.fetch(fetchRequest)
            return result
        }
        catch {
            print("[WARNING]: Failed to fetch Roupas (\(error.localizedDescription))")
            return []
        }
    }
    public func createRoupas(itemRoupas: String) ->
    Roupas {
        let Roupas: Roupas =
        Roupas(context: viewContext)
        Roupas.itemRoupa = itemRoupas
        saveContext()
        
        return Roupas
    }
    public func deleteRoupas(roupas: Roupas) {
        viewContext.delete(roupas)
        saveContext()
    }
    //entidade Roupas
    
    //item sapatos
    public func fetchSapatos() -> [Sapatos] {
        let fetchRequest: NSFetchRequest<Sapatos> =
        Sapatos.fetchRequest()
        
        do {
            let result = try viewContext.fetch(fetchRequest)
            return result
        }
        catch {
            print("[WARNING]: Failed to fetch Sapatos (\(error.localizedDescription))")
            return []
        }
    }
    public func createSapatos(itemSapatos: String) ->
    Sapatos {
        let Sapatos: Sapatos =
        Sapatos(context: viewContext)
        Sapatos.itemSapato = itemSapatos
        saveContext()
        
        return Sapatos
    }
    
    public func deleteSapatos(sapatos: Sapatos) {
        viewContext.delete(sapatos)
        saveContext()
    }
    //entidade sapatos
}

