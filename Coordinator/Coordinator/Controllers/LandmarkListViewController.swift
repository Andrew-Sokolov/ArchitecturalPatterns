//
//  LandmarkListViewController.swift
//  Coordinator
//

import UIKit

class LandmarkListViewController: UITableViewController {
    
    weak var coordinator: Coordinator?
    private let landmarks: [Landmark] = AdapterJSONToArray(dataFile: "landmarkData.json").convert()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Landmarks"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        landmarks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LandmarkCell", for: indexPath) as! LandmarkCell
        let landmark = landmarks[indexPath.row]
        cell.setup(with: landmark.shortFormat)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let landmark = landmarks[indexPath.row]
        coordinator?.showDetails(for: landmark)
    }
    
}

extension LandmarkListViewController {
    
    static func create() -> LandmarkListViewController {
        UIStoryboard(name: "LandmarkList", bundle: nil).instantiateInitialViewController() as! LandmarkListViewController
    }
    
}
