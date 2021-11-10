//
//  SecondViewController.swift
//  GCD
//
//  Created by Kirill Drozdov on 10.11.2021.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    fileprivate var imageURL: URL?
    fileprivate var image: UIImage?{
        get{
            return imageView.image
        }
        set{
            activityIndicator.stopAnimating()
            activityIndicator.isHidden = true
            imageView.image = newValue
            imageView.sizeToFit()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchImage()
    }
    


    fileprivate func fetchImage(){
        imageURL = URL(string: "https://sun1-57.userapi.com/impg/LheaHr-7yUG1R_L5Af0YUxsxr_Rv45BehPHmzg/CUuC7NbjZsY.jpg?size=2048x2048&quality=96&sign=deee056cb82345dd130864cee71e8776&type=album")
        activityIndicator.startAnimating()
        activityIndicator.isHidden = false
        
        
        let queue = DispatchQueue.global(qos: .utility)
        queue.async { [self] in
            guard let url = imageURL, let imageData = try? Data(contentsOf: url) else {return}
            DispatchQueue.main.async {
                self.image = UIImage(data: imageData)
            }
            
        }
        
       
    }

}
