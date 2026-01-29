//
//  MainViewModel.swift
//  Chistes
//
//  Created by Christians Bonilla on 29/01/26.
//

import UIKit

class MainViewModel:MainViewModelProtocol{
    var jokes: [JokesModel] = []
    
    func getJokes() async {
        do {
            let request = URLRequest(url: URL(string: "https://api.chucknorris.io/jokes/random")!)
            let (data, _) = try await URLSession.shared.data(for: request)
            let joke = try JSONDecoder().decode(JokesModel.self, from: data)
            addJoke(joke)
        } catch {
            print("Error fetching joke:", error)
        }
    }

    
    private func addJoke(_ joke: JokesModel) {
        if !jokes.contains(where: { $0.value == joke.value }) {
            jokes.append(joke)
        }
    }
    
}
