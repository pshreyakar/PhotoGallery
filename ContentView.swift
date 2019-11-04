//
//  ContentView.swift
//  PhotoGallery
//
//  Created by RheaRam Shreyakar on 11/3/19.
//  Copyright © 2019 RheaRam Shreyakar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var galleries: [GalleryList] = []
    
    var body: some View {
      
        NavigationView
        {
                    List(galleries) { GalleryList in
                    
                        NavigationLink(destination: Text(GalleryList.name))
                        {
                                Image(GalleryList.thumbnailName)
                                    .cornerRadius(8)
                                VStack(alignment: .leading)
                                    {
                                        Text(GalleryList.name)
                                        Text("\(GalleryList.photos) Photos")
                                            .font(.subheadline)
                                            .foregroundColor(.secondary)
                                    }
                        }
                    }
        .navigationBarTitle(Text("Photo Gallery"))
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(galleries: testData)
    }
}
