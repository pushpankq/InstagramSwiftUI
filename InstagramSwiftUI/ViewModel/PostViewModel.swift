//
//  PostViewModel.swift
//  InstagramSwiftUI
//
//  Created by Pushpank Kumar on 12/04/20.
//  Copyright © 2020 Pushpank Kumar. All rights reserved.
//

import SwiftUI
import Firebase

class PostViewModel : ObservableObject {
    
    @Published var posts = [PostModel]()
    
    init() {
        
        let database = Firestore.firestore()
        database.collection("posts").addSnapshotListener { (snap, err) in
            
            if err != nil{
                
                print((err?.localizedDescription)!)
                return
            }
            
            for i in snap!.documentChanges{
                
                if i.type == .added{
                    
                    let id = i.document.documentID
                    let name = i.document.get("name") as! String
                    let image = i.document.get("image") as! String
                    let comment = i.document.get("comments") as! String
                    let likes = i.document.get("likes") as! String
                    self.posts.append(PostModel(id: id, name: name, image: image, comments: comment, likes: likes))
                }
                
                if i.type == .removed{
                    
                    let id = i.document.documentID
                    
                    for j in 0..<self.posts.count{
                        
                        if self.posts[j].id == id{
                            self.posts.remove(at: j)
                            return
                        }
                    }
                }
                
                if i.type == .modified{
                    
                    let id = i.document.documentID
                    let likes = i.document.get("likes") as! String
                    
                    for j in 0..<self.posts.count{
                        
                        if self.posts[j].id == id{
                            
                            self.posts[j].likes = likes
                            return
                        }
                    }
                }
            }
        }
    }
}
