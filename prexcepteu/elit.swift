import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a view
        let myView = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        myView.backgroundColor = .red
        self.view.addSubview(myView)

        // Animate the view to a new position after a delay of 1 second
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            UIView.animate(withDuration: 2.0, animations: {
                // Update the view's position
                myView.frame = CGRect(x: 200, y: 200, width: 100, height: 100)
            })
        }
    }
}
