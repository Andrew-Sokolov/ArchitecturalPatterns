//
//  LandmarkListViewController.swift
//  AppleMVC
//

import UIKit

class LandmarkListViewController: UITableViewController {
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else { return }
        
        let landmark = landmarks[indexPath.row]
        (segue.destination as? LandmarkDetailViewController)?.landmark = landmark
    }
    
}
