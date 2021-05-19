import SpriteKit

public class Capa: SKScene {
    var capa: SKSpriteNode = SKSpriteNode(imageNamed: "Introdução.png")
    
    public override func didMove(to view: SKView) {
        super.didMove(to: view)
        self.addChild(capa)
    }
    
    public override func didChangeSize(_ oldSize: CGSize) {
        capa.anchorPoint = CGPoint(x: 0, y: 0)
        capa.size.width = self.frame.width
        capa.size.height = self.size.height
    }
}

