import UIKit

class ViewController: UIViewController,UITextViewDelegate {

    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.delegate = self
        
    }
    
    
    //フォーカスが当たったときはプレースホルダー非表示
    func textViewDidBeginEditing(_ textView: UITextView) {
        textLabel.isHidden = true
    }
    
    
    //textviewからフォーカスが外れて、TextViewが空だったらLabelを再び表示
    func textViewDidEndEditing(_ textView: UITextView) {
        if(textView.text.isEmpty){
            textLabel.isHidden = false
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

