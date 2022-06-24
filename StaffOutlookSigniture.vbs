On Error Resume Next

'Variable Set'


Set objSysInfo = CreateObject("ADSystemInfo")

Set WshShell = CreateObject("WScript.Shell")

strUser = objSysInfo.UserName
Set objUser = GetObject("LDAP://" & strUser)

strName = objUser.FullName
strTitle = objUser.Title
strCred = objUser.info
strStreet = objUser.StreetAddress
strLocation = objUser.l
strPostCode = objUser.PostalCode
'strPhone = objUser.TelephoneNumber'
strTelephone = " 01708 865 180"
strMobile = objUser.Mobile
'strShowMobile = objUser.showMobile'
strFax = objUser.FacsimileTelephoneNumber
strEmail = objUser.mail
strWebsite = "https://website.com/"
strAcademyName = "School or Buisness name"
strAddress = "Address"
strLogo = "\\path\to\logo"
strLogo1 = "\\path\to\logo"
strLogo2 = "\\path\to\logo"
strDDI = objUser.homePhone
strWH = objUser.workingHours
strFollowUsText = "\\path\to\SocialMedia\FollowUs.png"
strFacebookLogo = "\\path\to\facebook.png"
strTwitterLogo = "\\path\to\SocialMedia\twitter.png"
strInstagramLogo = "\\path\to\SocialMedia\instagram.png"



'Full Signiture 1 Start'

Set objWord = CreateObject("Word.Application")

Set objDoc = objWord.Documents.Add()
Set objSelection = objWord.Selection

Set objEmailOptions = objWord.EmailOptions
Set objSignatureObject = objEmailOptions.EmailSignature

Set objSignatureEntries = objSignatureObject.EmailSignatureEntries

objSelection.Font.Name = "Calibri"
objSelection.Font.Size = 18
objSelection.Font.Color = RGB(242,125,0)
objSelection.Font.Bold = False
if (strCred) Then objSelection.TypeText strName & ", " & strCred Else objSelection.TypeText strName


objSelection.TypeText Chr(11)
objSelection.Font.Bold = True
objSelection.Font.Size = 14
objSelection.Font.Color = RGB(102,102,102)
if (strTitle) Then objSelection.TypeText strTitle


objSelection.Font.Size = 14
objSelection.Font.Bold = False
objSelection.Font.Size = 13
objSelection.TypeText Chr(11) 
objSelection.TypeText strAcademyName

objSelection.Font.Size = 10
objSelection.TypeText Chr(11)
objSelection.TypeText strAddress

objSelection.TypeText Chr(11)
objSelection.Font.Bold = True
objSelection.TypeText "Phone:"
objSelection.Font.Bold = False
objDoc.Hyperlinks.Add objSelection.Range, "tel:" & strTelephone,,,strTelephone
objSelection.TypeText " "
objSelection.Font.Bold = True
if (strDDI) Then  objSelection.TypeText "| DDI: "
objSelection.Font.Bold = False
if (strDDI) Then objSelection.TypeText strDDI
if (strDDI) Then objSelection.TypeText " "
objSelection.Font.Bold = True
'if (strPhone) Then objSelection.TypeText "| Ext: " '
objSelection.Font.Bold = False
if (strPhone) Then objSelection.TypeText strPhone

if (strShowMobile) Then objSelection.TypeText Chr(11)
if (strShowMobile) Then objSelection.Font.Bold = True
if (strShowMobile) Then objSelection.TypeText "Mobile: "
if (strShowMobile) Then objSelection.Font.Bold = False
if (strShowMobile) Then objSelection.TypeText strMobile

objSelection.TypeText Chr(11)
objSelection.Font.Bold = True
if (strEmail) Then objSelection.TypeText "Email: "
objSelection.Font.Bold = False
objDoc.Hyperlinks.Add objSelection.Range, "mailto:" & strEmail,,,strEmail & Chr(11)


objSelection.Font.Bold = True
objSelection.TypeText "Website: "
objSelection.Font.Bold = False
objDoc.Hyperlinks.Add objSelection.Range, strWebsite,,,"www.company.org.uk"

if (strWH) Then  objSelection.TypeText Chr(11)
if (strWH) Then  objSelection.Font.Bold = True
if (strWH) Then  objSelection.TypeText "Working Hours: "
if (strWH) Then  objSelection.Font.Bold = False
if (strWH) Then  objSelection.TypeText strWH

objSelection.TypeText Chr(11)
objSelection.TypeText Chr(11)
objSelection.InlineShapes.AddPicture(strLogo)
objSelection.TypeText Chr(11)
objSelection.TypeText Chr(11)
objSelection.InlineShapes.AddPicture(strFollowUsText)
objSelection.TypeText Chr(11)
objSelection.TypeText Chr(11)
objSelection.InlineShapes.AddPicture(strFacebookLogo)
objSelection.TypeText "           "
objSelection.InlineShapes.AddPicture(strTwitterLogo)
objSelection.TypeText "           "
objSelection.InlineShapes.AddPicture(strInstagramLogo)

objDoc.Hyperlinks.Add objDoc.InlineShapes.Item(3), "https://www.facebook.com/company" & Chr(11)
objDoc.Hyperlinks.Add objDoc.InlineShapes.Item(4), "https://www.twitter.com/company" & Chr(11)
objDoc.Hyperlinks.Add objDoc.InlineShapes.Item(5), "https://www.instagram.com/company/"

Set objSelection = objDoc.Range()

objSignatureEntries.Add "Full Signature", objSelection
objSignatureObject.NewMessageSignature = "Full Signature"

objDoc.Saved = True
objWord.Quit
'Full Signiture 1  End'

'Full Signiture 2 Start'

Set objWord = CreateObject("Word.Application")

Set objDoc = objWord.Documents.Add()
Set objSelection = objWord.Selection

Set objEmailOptions = objWord.EmailOptions
Set objSignatureObject = objEmailOptions.EmailSignature

Set objSignatureEntries = objSignatureObject.EmailSignatureEntries

objSelection.Font.Name = "Calibri"
objSelection.Font.Size = 18
objSelection.Font.Color = RGB(242,125,0)
objSelection.Font.Bold = False
if (strCred) Then objSelection.TypeText strName & ", " & strCred Else objSelection.TypeText strName


objSelection.TypeText Chr(11)
objSelection.Font.Bold = True
objSelection.Font.Size = 14
objSelection.Font.Color = RGB(102,102,102)
if (strTitle) Then objSelection.TypeText strTitle


objSelection.Font.Size = 14
objSelection.Font.Bold = False
objSelection.Font.Size = 13
objSelection.TypeText Chr(11) 
objSelection.TypeText strAcademyName


objSelection.Font.Size = 10
objSelection.TypeText Chr(11)
objSelection.TypeText strAddress


objSelection.TypeText Chr(11)
objSelection.Font.Bold = True
objSelection.TypeText "Phone:"
objSelection.Font.Bold = False
objDoc.Hyperlinks.Add objSelection.Range, "tel:" & strTelephone,,,strTelephone
objSelection.TypeText " "
objSelection.Font.Bold = True
if (strDDI) Then  objSelection.TypeText "| DDI: "
objSelection.Font.Bold = False
if (strDDI) Then objSelection.TypeText strDDI
if (strDDI) Then objSelection.TypeText " "
objSelection.Font.Bold = True
'if (strPhone) Then objSelection.TypeText "| Ext: "'
objSelection.Font.Bold = False
if (strPhone) Then objSelection.TypeText strPhone

if (strShowMobile) Then objSelection.TypeText Chr(11)
if (strShowMobile) Then objSelection.Font.Bold = True
if (strShowMobile) Then objSelection.TypeText "Mobile: "
if (strShowMobile) Then objSelection.Font.Bold = False
if (strShowMobile) Then objSelection.TypeText strMobile

objSelection.TypeText Chr(11)
objSelection.Font.Bold = True
if (strEmail) Then objSelection.TypeText "Email: "
objSelection.Font.Bold = False
objDoc.Hyperlinks.Add objSelection.Range, "mailto:" & strEmail,,,strEmail & Chr(11)

objSelection.Font.Bold = True
objSelection.TypeText "Website: "
objSelection.Font.Bold = False
objDoc.Hyperlinks.Add objSelection.Range, strWebsite,,,"www.company.org.uk"

if (strWH) Then  objSelection.TypeText Chr(11)
if (strWH) Then  objSelection.Font.Bold = True
if (strWH) Then  objSelection.TypeText "Working Hours: "
if (strWH) Then  objSelection.Font.Bold = False
if (strWH) Then  objSelection.TypeText strWH
objSelection.TypeText Chr(11)
objSelection.TypeText Chr(11)
objSelection.InlineShapes.AddPicture(strLogo1)
objSelection.TypeText Chr(11)
objSelection.TypeText Chr(11)
objSelection.InlineShapes.AddPicture(strFollowUsText)
objSelection.TypeText Chr(11)
objSelection.TypeText Chr(11)
objSelection.InlineShapes.AddPicture(strFacebookLogo)
objSelection.TypeText "           "
objSelection.InlineShapes.AddPicture(strTwitterLogo)
objSelection.TypeText "           "
objSelection.InlineShapes.AddPicture(strInstagramLogo)

objDoc.Hyperlinks.Add objDoc.InlineShapes.Item(3), "https://www.facebook.com/company"
objDoc.Hyperlinks.Add objDoc.InlineShapes.Item(4), "https://www.twitter.com/company"
objDoc.Hyperlinks.Add objDoc.InlineShapes.Item(5), "https://www.instagram.com/company/"

Set objSelection = objDoc.Range()

objSignatureEntries.Add "Full Signature 1", objSelection
objSignatureObject.NewMessageSignature = "Full Signature 1"

objDoc.Saved = True
objWord.Quit
'Full Signiture 2 End'

'Full Signiture 3 Start'

Set objWord = CreateObject("Word.Application")

Set objDoc = objWord.Documents.Add()
Set objSelection = objWord.Selection

Set objEmailOptions = objWord.EmailOptions
Set objSignatureObject = objEmailOptions.EmailSignature

Set objSignatureEntries = objSignatureObject.EmailSignatureEntries

objSelection.Font.Name = "Calibri"
objSelection.Font.Size = 18
objSelection.Font.Color = RGB(242,125,0)
objSelection.Font.Bold = False
if (strCred) Then objSelection.TypeText strName & ", " & strCred Else objSelection.TypeText strName


objSelection.TypeText Chr(11)
objSelection.Font.Bold = True
objSelection.Font.Size = 14
objSelection.Font.Color = RGB(102,102,102)
if (strTitle) Then objSelection.TypeText strTitle


objSelection.Font.Size = 14
objSelection.Font.Bold = False
objSelection.Font.Size = 13
objSelection.TypeText Chr(11) 
objSelection.TypeText strAcademyName


objSelection.Font.Size = 10
objSelection.TypeText Chr(11)
objSelection.TypeText strAddress


objSelection.TypeText Chr(11)
objSelection.Font.Bold = True
objSelection.TypeText "Phone:"
objSelection.Font.Bold = False
objDoc.Hyperlinks.Add objSelection.Range, "tel:" & strTelephone,,,strTelephone
objSelection.TypeText " "
objSelection.Font.Bold = True
if (strDDI) Then  objSelection.TypeText "| DDI: "
objSelection.Font.Bold = False
if (strDDI) Then objSelection.TypeText strDDI
if (strDDI) Then objSelection.TypeText " "
objSelection.Font.Bold = True
'if (strPhone) Then objSelection.TypeText "| Ext: "'
objSelection.Font.Bold = False
if (strPhone) Then objSelection.TypeText strPhone

if (strShowMobile) Then objSelection.TypeText Chr(11)
if (strShowMobile) Then objSelection.Font.BFold = True
if (strShowMobile) Then objSelection.TypeText "Mobile: "
if (strShowMobile) Then objSelection.Font.Bold = False
if (strShowMobile) Then objSelection.TypeText strMobile

objSelection.TypeText Chr(11)
objSelection.Font.Bold = True
if (strEmail) Then objSelection.TypeText "Email: "
objSelection.Font.Bold = False
objDoc.Hyperlinks.Add objSelection.Range, "mailto:" & strEmail,,,strEmail & Chr(11)
objSelection.Font.Bold = True
objSelection.TypeText "Website: "
objSelection.Font.Bold = False
objDoc.Hyperlinks.Add objSelection.Range, strWebsite,,,"www.company.org.uk"

if (strWH) Then  objSelection.TypeText Chr(11)
if (strWH) Then  objSelection.Font.Bold = True
if (strWH) Then  objSelection.TypeText "Working Hours: "
if (strWH) Then  objSelection.Font.Bold = False
if (strWH) Then  objSelection.TypeText strWH
objSelection.TypeText Chr(11)
objSelection.TypeText Chr(11)
objSelection.InlineShapes.AddPicture(strLogo2)
objSelection.TypeText Chr(11)
objSelection.TypeText Chr(11)
objSelection.InlineShapes.AddPicture(strFollowUsText)
objSelection.TypeText Chr(11)
objSelection.TypeText Chr(11)
objSelection.InlineShapes.AddPicture(strFacebookLogo)
objSelection.TypeText "           "
objSelection.InlineShapes.AddPicture(strTwitterLogo)
objSelection.TypeText "           "
objSelection.InlineShapes.AddPicture(strInstagramLogo)


objDoc.Hyperlinks.Add objDoc.InlineShapes.Item(3), "https://www.facebook.com/company"
objDoc.Hyperlinks.Add objDoc.InlineShapes.Item(4), "https://www.twitter.com/company"
objDoc.Hyperlinks.Add objDoc.InlineShapes.Item(5), "https://www.instagram.com/company/"


Set objSelection = objDoc.Range()

objSignatureEntries.Add "Full Signature 2", objSelection
objSignatureObject.NewMessageSignature = "Full Signature 2"

objDoc.Saved = True
objWord.Quit

'Full Signiture 3 End'



'Reply Signiture Start'


Set objWord = CreateObject("Word.Application")

Set objDoc = objWord.Documents.Add()
Set objSelection = objWord.Selection

Set objEmailOptions = objWord.EmailOptions
Set objSignatureObject = objEmailOptions.EmailSignature

Set objSignatureEntries = objSignatureObject.EmailSignatureEntries

objSelection.Font.Name = "Calibri"
objSelection.Font.Size = 18
objSelection.Font.Color = RGB(242,125,0)
objSelection.Font.Bold = False
if (strCred) Then objSelection.TypeText strName & ", " & strCred Else objSelection.TypeText strName


objSelection.TypeText Chr(11)
objSelection.Font.Bold = True
objSelection.Font.Size = 14
objSelection.Font.Color = RGB(102,102,102)
if (strTitle) Then objSelection.TypeText strTitle


objSelection.Font.Size = 14
objSelection.Font.Bold = False
objSelection.Font.Size = 13
objSelection.TypeText Chr(11) 
objSelection.TypeText strAcademyName


objSelection.Font.Size = 10
objSelection.TypeText Chr(11)
objSelection.TypeText strAddress

Set objSelection = objDoc.Range()

objSignatureEntries.Add "Reply Signature", objSelection

objSignatureObject.ReplyMessageSignature = "Reply Signature"

objDoc.Saved = True
objWord.Quit

'Reply Signiture Finish'
