//
//  Extension+UIImageView.swift
//  Chistes
//
//  Created by Christians Bonilla on 29/01/26.
//

import UIKit

extension UIImageView {
    func loadFrom(urlString: String) {
        guard let url = URL(string: urlString) else { return }

        Task {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                if let image = UIImage(data: data) {
                    await MainActor.run {
                        self.image = image
                    }
                }
            } catch {
                print("Error loading image:", error)
            }
        }
    }
}
