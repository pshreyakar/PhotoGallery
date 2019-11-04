//
//  GalleryList.swift
//  PhotoGallery
//
//  Created by RheaRam Shreyakar on 11/3/19.
//  Copyright © 2019 RheaRam Shreyakar. All rights reserved.
//

import SwiftUI

struct GalleryList: Identifiable {
    var id = UUID()
    var name: String
    var photos: Int
    var hasVideo: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb" }
    
}


#if DEBUG

let testData =

[
    GalleryList(name: "Family", photos: 6, hasVideo: true),
    GalleryList(name: "Couple", photos: 2, hasVideo: false),
    GalleryList(name: "NewBorn", photos: 1, hasVideo: true),
    GalleryList(name: "Portrait", photos: 12, hasVideo: true),
    GalleryList(name: "Travel", photos: 16, hasVideo: false),
    GalleryList(name: "Wedding", photos: 3, hasVideo: true)

]

#endif
