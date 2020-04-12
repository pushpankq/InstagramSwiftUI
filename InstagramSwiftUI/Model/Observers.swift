//
//  Main.swift
//  InstagramSwiftUI
//
//  Created by Puspank Kumar on 12/04/20.
//  Copyright © 2020 Puspank Kumar. All rights reserved.
//

import SwiftUI
import Firebase

class Observer : ObservableObject {
    @Published var status = [datatype]()
    
    init() {
        let database = Firestore.firestore()
        database.collection("status").addSnapshotListener { (snapshot, error) in
            
            if error != nil{
                debugPrint((error?.localizedDescription)!)
                return
            }
            
            for i in snapshot!.documentChanges {
                
                if i.type == .added {
                    let id  = i.document.documentID
                    
                    print("********************************")
                    print("********************************")
                    print("********************************")
                    print("********************************")
                    print("********************************")
                    print("document", i.document.get("name"))
                    print("********************************")
                       print("********************************")
                       print("********************************")
                       print("********************************")
                       print("********************************")
                    print("document", i.document.get("image"))


                    

                    
                    let name = i.document.get("name") as? String
                    let image = i.document.get("image") as? String
                    
                    
                    
                    self.status.append(datatype(id: id, name: name ?? "", image: image ?? ""))
                         
                }
                
            }
        }
        
    }
}
