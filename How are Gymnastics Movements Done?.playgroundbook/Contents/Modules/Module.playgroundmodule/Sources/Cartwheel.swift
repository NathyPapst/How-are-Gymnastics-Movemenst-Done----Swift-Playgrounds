import SpriteKit
import AVFoundation

public class Cartwheel: SKScene, AVAudioPlayerDelegate {
    var estrela: SKSpriteNode = SKSpriteNode(imageNamed: "Frame 7.png")
    var estrela_2: SKSpriteNode = SKSpriteNode(imageNamed: "Frame 8.png")
    var background = SKSpriteNode(imageNamed: "Cenário.png")
    var som: SKSpriteNode = SKSpriteNode(imageNamed: "Com Som.png")
    var count: Int = 0
    public var Time_per_frame: Double = 0.5
    var conjunto: [SKTexture] = []
    
    public override func didMove(to view: SKView) {
        super.didMove(to: view)
        self.addChild(background)
        self.addChild(estrela)
        self.addChild(som)
        loopMusic()
    }
    
    public override func didChangeSize(_ oldSize: CGSize) {
        background.anchorPoint = CGPoint(x: 0, y: 0)
        background.size.width = self.frame.width
        background.size.height = self.size.height
        
        estrela.position.x = self.size.width / 3
        estrela.position.y = self.size.height / 4
        
        estrela.size.width = self.size.width / 2
        estrela.size.height = self.size.height / 2
        
        self.som.name = "desligarSom"
        self.som.setScale(0.2)
        self.som.position = CGPoint(x: 55, y: self.size.height - 120)
    }
    
    
    public func Cartwheel_Complete() {
        var tempoTotal: Double = (Time_per_frame * 2) / 0.4
        
        let passosEstrela: [SKTexture] = [SKTexture(imageNamed: "Frame 7.png"), SKTexture(imageNamed: "Frame 7.png"),SKTexture(imageNamed: "Frame 8.png"), SKTexture(imageNamed: "Frame 13.png"), SKTexture(imageNamed: "Frame 14.png"), SKTexture(imageNamed: "Frame 1.png") ]
        
        for t in passosEstrela{
            t.filteringMode = .nearest
        }
        
        let animacao = SKAction.animate(with: passosEstrela, timePerFrame: Time_per_frame)
        let rodar = SKAction.repeat(animacao, count: 1)
        let action = SKAction.moveBy(x: 300, y: 0, duration: tempoTotal)
        
        estrela.run(rodar)
        estrela.run(action)
    }
    
    public func Hands_in_the_air_facing_right_wall() {
        let passo1: [SKTexture] = [SKTexture(imageNamed: "Frame 7.png"), SKTexture(imageNamed: "Frame 7.png"), SKTexture(imageNamed: "Frame 7.png"), SKTexture(imageNamed: "Frame 7.png"), SKTexture(imageNamed: "Frame 7.png"), SKTexture(imageNamed: "Frame 7.png"), SKTexture(imageNamed: "Frame 7.png"), SKTexture(imageNamed: "Frame 7.png"), SKTexture(imageNamed: "Frame 7.png")]
        
        for i in passo1{
            conjunto.append(i)
        }
    }
    
    
    public func Hands_arriving_on_the_ground_and_one_foot_in_the_air() {
        let passo2: [SKTexture] = [SKTexture(imageNamed: "Frame 8.png"), SKTexture(imageNamed: "Frame 8.png"), SKTexture(imageNamed: "Frame 8.png"), SKTexture(imageNamed: "Frame 8.png"), SKTexture(imageNamed: "Frame 8.png")]
        
        for i in passo2{
            conjunto.append(i)
        }
    }
    
    
    public func Hands_on_the_ground_and_both_feet_in_the_air() {
        
        let passo3: [SKTexture] = [SKTexture(imageNamed: "Frame 13.png"), SKTexture(imageNamed: "Frame 13.png"), SKTexture(imageNamed: "Frame 13.png"), SKTexture(imageNamed: "Frame 13.png"), SKTexture(imageNamed: "Frame 13.png")]
        
        for i in passo3{
            conjunto.append(i)
        }
        
    }
    
    public func Hands_on_the_ground_one_foot_on_the_ground_and_the_other_one_arriving() {
        
        let passo4: [SKTexture] = [SKTexture(imageNamed: "Frame 14.png"), SKTexture(imageNamed: "Frame 14.png"), SKTexture(imageNamed: "Frame 14.png"), SKTexture(imageNamed: "Frame 14.png"), SKTexture(imageNamed: "Frame 14.png")]
        
        for i in passo4{
            conjunto.append(i)
        }
    }
    
    public func Hands_in_the_air_facing_left_wall() {
        
        let passo4: [SKTexture] = [SKTexture(imageNamed: "Frame 1.png"), SKTexture(imageNamed: "Frame 1.png"), SKTexture(imageNamed: "Frame 1.png"), SKTexture(imageNamed: "Frame 1.png"), SKTexture(imageNamed: "Frame 1.png")]
        
        for i in passo4{
            conjunto.append(i)
        }
    }
    
    public func exec(){
        
        for t in conjunto{
            t.filteringMode = .nearest
        }
        
        let animacao = SKAction.animate(with: conjunto, timePerFrame: 0.1)
        let rodar = SKAction.repeat(animacao, count: 1)
        let action = SKAction.moveBy(x: 300, y: 0, duration: 2.5)
        
        estrela.run(rodar)
        estrela.run(action)
    }
    
    private var backgroundSound: AVAudioPlayer?
    func loopMusic() {
        backgroundSound?.delegate = self
        guard let path = Bundle.main.path(forResource: "MusicaNath", ofType:"m4a") else { return }
        let url = URL(fileURLWithPath: path)
        do{
            backgroundSound = try AVAudioPlayer(contentsOf: url)
            backgroundSound?.volume = 0.1
            backgroundSound?.play()
            backgroundSound?.numberOfLoops = -1
        }catch{
            print("Problem with audio")
        }
    }
    
    public func mudarBotaoSom() {
        self.count += 1
        if (self.count % 2 == 1){
            self.backgroundSound?.volume = 0.0
            self.som.texture = SKTexture(imageNamed: "Sem Som.png")
            self.som.name = "desligarSom"
            self.som.setScale(0.2)
            self.som.position = CGPoint(x: 55, y: self.size.height - 120)
        }
        
        else{
            self.backgroundSound?.volume = 0.1
            self.som.texture = SKTexture(imageNamed: "Com Som.png")
            self.som.name = "desligarSom"
            self.som.setScale(0.2)
            self.som.position = CGPoint(x: 55, y: self.size.height - 120)
        }
        
    }
    
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        let scene = self
        if let touch = touches.first{
            let location = touch.location(in: scene)
            let touchedNodes = scene.nodes(at: location)
            for node in touchedNodes.reversed(){
                if node.name == "desligarSom"{
                    scene.mudarBotaoSom()
                }
            }
        }
    }
}

