//
//  ContentView.swift
//  TwitterClone
//
//  Created by Saavaj on 19/06/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {

        if #available(iOS 16.0, *) {
            NavigationStack{
        
                TabView{
                    FeedView()
                        .tabItem{
                            Image(systemName: "house")
                            Text("Home")
                        }
                    SearchView()
                        .tabItem{
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                        }
                    MessageView()
                        .tabItem{
                            Image(systemName: "envelope")
                            Text("Message")
                        }
                }
            }
        } else {
            NavigationView{
                TabView{
                    Text("Feed")
                        .tabItem{
                            Image(systemName: "house")
                            Text("Home")
                        }
                    Text("Search")
                        .tabItem{
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                        }
                    Text("Message")
                        .tabItem{
                            Image(systemName: "envelope")
                            Text("Message")
                        }
                }
            }
            // Fallback on earlier versions
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
