protocol Button {
    func render()
    func onClick()
}

class FancyButton: Button {
    func render() {
        print("Rendering a fancy Button")
        onClick()
    }
    
    func onClick() {
        print("Fancy button has been clicked")
    }
}

class RegularButton: Button {
    func render() {
        print("Rendering a regular Button")
        onClick()
    }
    
    func onClick() {
        print("Regular button has been clicked")
    }
}

protocol Dialog {
    func renderWindow()
    func createButton() -> Button
}

extension Dialog {
    func renderWindow() {
        let someButton: Button = createButton()
        someButton.render()
    }
}

class FanyDialog: Dialog {
    func createButton() -> Button {
        return FancyButton()
    }
}

class RegularDialog: Dialog {
    func createButton() -> Button {
        return RegularButton()
    }
}

var dialog: Dialog = FanyDialog()
dialog.renderWindow()

dialog = RegularDialog()
dialog.renderWindow()
