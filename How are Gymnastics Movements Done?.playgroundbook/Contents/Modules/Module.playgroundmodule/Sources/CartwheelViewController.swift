import SpriteKit

public class CartwheelViewController: UIViewController{
    public override func viewDidLoad() {
        super.viewDidLoad()
        let view = SKView()
        scene.scaleMode = .resizeFill
        view.presentScene(scene)
        self.view = view
    }
    
    public let scene = Cartwheel()
}

