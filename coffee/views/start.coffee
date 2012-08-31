exports.Window = do ->
  window = Ti.UI.createWindow()

  form = Ti.UI.createView
    layout: 'vertical'
    top: 0
  window.add(form)

  labelWelcome = Ti.UI.createLabel
    color: '#fff'
    font: {fontSize: 18, fontWeight: 'bold', fontColor: '#fff'}
    text: 'Welcome!'
    textAlign: Ti.UI.TEXT_ALIGNMENT_CENTER
    top: 15
    width: 'auto'
    height: 'auto'
  form.add(labelWelcome)

  txtName = Ti.UI.createTextField
    hintText: "Write your name here"
    top: 10
    borderStyle: Ti.UI.INPUT_BORDERSTYLE_ROUNDED
    width: '90%'
    height: 'auto'
  form.add(txtName)

  btnAlert = Ti.UI.createButton
    height: 60
    width: 'auto'
    title: 'Greet me!'
    font: {fontSize: 24, fontWeight: 'bold', fontColor: '#000'}
    color: '#000'
    bottom: 10
  window.add(btnAlert)

  btnAlert.addEventListener 'click', ->
    notice = Titanium.UI.createAlertDialog
      message: "Hello #{txtName.value}!"
    notice.show()

  window
