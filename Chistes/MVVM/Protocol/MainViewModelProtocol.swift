//
//  MainViewModelProtocol.swift
//  Chistes
//
//  Created by Christians Bonilla on 29/01/26.
//

protocol MainViewModelProtocol {
    var jokes: [JokesModel] { get }
    func getJokes() async
}
