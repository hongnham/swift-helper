extension NSMutableAttributedString {

   
    func setColorForText(_ textToFind: String?, with color: UIColor) {

        for item in texts.split(separator: " ") {
            var temp: String?
            let range:NSRange?
            temp = String(item )
            if let text = temp {
                range = self.mutableString.range(of: text, options: .caseInsensitive)
            }else{
                range = NSMakeRange(0, self.length)
            }
            
            if range!.location != NSNotFound {
                addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range!)
            }
        }
    }
    func setHighlightColorForText(with color:UIColor, texts: String){
        for item in texts.split(separator: " ") {
            var temp: String?
            let range:NSRange?
            temp = String(item )
            if let text = temp {
                range = self.mutableString.range(of: text, options: .caseInsensitive)
            }else{
                range = NSMakeRange(0, self.length)
            }
            
            if range!.location != NSNotFound {
                addAttribute(NSAttributedString.Key.backgroundColor, value: color, range: range!)
            }
        }
            
        }

