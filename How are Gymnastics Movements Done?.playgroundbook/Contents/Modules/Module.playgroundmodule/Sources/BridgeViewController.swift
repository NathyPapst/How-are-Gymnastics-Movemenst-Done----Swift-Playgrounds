import SpriteKit

public class BridgeViewController: UIViewController{
    public override func viewDidLoad() {
        super.viewDidLoad()
        let view = SKView()
        scene.scaleMode = .resizeFill
        view.presentScene(scene)
        self.view = view
    }
    public let scene = Bridge()
}
