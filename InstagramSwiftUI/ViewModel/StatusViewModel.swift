//
//  StatusViewModel.swift
//  InstagramSwiftUI
//
//  Created by Pushpank Kumar on 12/04/20.
//  Copyright © 2020 Pushpank Kumar. All rights reserved.
//

import SwiftUI
import Firebase

class StatusViewModel : ObservableObject {
    @Published var status = [StatusModel]()
    
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
                    let name = i.document.get("name") as? String
                    let image = i.document.get("image") as? String
                    self.status.append(StatusModel(id: id, name: name ?? "", image: image ?? ""))
                    
                }
                
                if i.type == .removed{
                    
                    let id = i.document.documentID
                    for j in 0..<self.status.count{
                        if self.status[j].id == id{
                            self.status.remove(at: j)
                            return
                        }
                    }
                }
            }
        }
    }
}
