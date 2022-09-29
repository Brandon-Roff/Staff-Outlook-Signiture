
<h1 align="center">
  <img alt="Microsoft" src="https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE1Mu3b?ver=5c31" width="224px"/>  <br/>
  <br></br>
  Staff Outlook Signiture
</h1>
<br></br>
<p align="center">Create 4 new Email Signiture for <b>Outlook</b> with <b>(Visual Basic, HTML).</b/></p>
<p align="center">It creates 4 Email Signitures Using Your logo and your AD Detailes</b/></p>
<p align="center">3 Full Signitures and a reply Signiture.</b/></p>



<p align="center">
<img alt="GitHub" src="https://img.shields.io/github/license/brandon-roff/Staff-Outlook-Signiture?color=green">
<img alt="GitHub issues" src="https://img.shields.io/github/issues/brandon-roff/Staff-Outlook-Signiture?color=green">
<img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr/brandon-roff/staff-outlook-signiture">
<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/brandon-roff/staff-outlook-signiture">
</p>


> 🔔 Please note: that you need to have <b>Active Directory<b> or <b>LDAP</b> setup as well as <b>Connected</b> to either. 


### ⚠️ Required
Active Directory 2012 + ✔️ </br>
LDAP Enabled ✔️ </br>
Visual Studio Code or Notepad ++ ✔️ </br>
Basic VBS Knowlege ✔️ </br>
Microsoft Word ✔️ </br>
Knowege of AD/LDAP ✔️ </br>
 
 
## ⚡️ Quick start

First, Step is to [download](https://github.com/Brandon-Roff/Staff-Outlook-Signiture/archive/refs/heads/main.zip) it,

>This will only work on windows 7, 8, 10, 11

<b>Open up your download folder and Unzip it</b>
>Typcially would be C:\Users\YourUsername\Downlaods

<b> Open it Up in you favouite text editor mine is VS Code</b>
<br></br>

>Click to install...

<a href="https://code.visualstudio.com/" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/vscode/vscode-original.svg" alt="VS Code" width="60" height="60" /> </a>

<b> Your Code should look something like this... </b>
> From line <b>20</b>
> 
```VBS
strTelephone = " 012345 678912"
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
```
## You will need to change the Following values...

  >Start at <b>Line 20</b>  

📱 Change this to your Personal/Companys Telephone Number

  ```VBS
strTelephone = " 012345 678912" 
```
<b> Change this to your companys Landline </b>
  
```VBS
strTelephone = " 0800 456789"
``` 
  <br></br>
  >Then go to <b>Line 25</b>  
  
🌐 Change this to your Personal/Companys Website address

  ```VBS
strWebsite = "https://website.com/"
```
<b> Change this to your companys website for example for me it would be... </b>
  
```VBS
strWebsite = "https://www.roftwares.com"
``` 
 <br></br>
  >Then go to <b>Line 26</b>  
  
🏢 Change this to your Personal/Companys Name

  ```VBS
strAcademyName = "School or Buisness name"
```
<b> Change this to your company name for example for me it would be... </b>
  
```VBS
strAcademyName = "Roftwares"
``` 

 <br></br>
  >Then go to <b>Line 27</b>  
  
📨 Change this to your Personal/Companys Address

  ```VBS
strAddress = "Address"
```
<b> Change this to your company Address for example ... </b>
  
```VBS
strAddress = "123 southend road AB12 3CD"
```
 <br></br>
  >Then go to <b>Line 28, 29, and 30</b>  

➕ Change this to your Personal/Companys UNC Path (network location) that stores the Logo
```VBS
strLogo = "\\path\to\logo"
strLogo1 = "\\path\to\logo"
strLogo2 = "\\path\to\logo"
```

<b>Change this to your Personal/Companys UNC Path for example</b>

```VBS
strLogo = "\\Network-Share\Home\Folder\Logos\Logo-Footer-1"
strLogo1 = "\\Network-Share\Home\Folder\Logos\Logo-Footer-2"
strLogo2 = "\\Network-Share\Home\Folder\Logos\Logo-Footer-3"
```

## ✨ Custom Font Attributes!!

### This Part will be for your Fore and surname that are Extracted from AD/LDAP

The Code Bellow is Replicated 4 times.
> Lines 52-56, 155-159, 258-262, 366-370

```VBS
objSelection.Font.Name = "Calibri"
objSelection.Font.Size = 18
objSelection.Font.Color = RGB(242,125,0)
objSelection.Font.Bold = False
if (strCred) Then objSelection.TypeText strName & ", " & strCred Else objSelection.TypeText strName
```

>The Four Attributes which you can Change here is, <b>Font, Font Size, Font Colour and/or Bold font.</b>

### 🗛 Font Type

```VBS
objSelection.Font.Name = "Calibri"
```

To change the font type you need to know the correct font type for Microsoft Word click [Here](https://docs.microsoft.com/en-us/typography/fonts/windows_10_font_list) to find the list.

### 🗚 Font Size (Can Vary)

```VBS
objSelection.Font.Size = 18
```

The font size is recommended to be between 8px - 72px

### 🔴 Font Colour

```VBS
objSelection.Font.Color = RGB(242,125,0)
```

The font colour can be change by changing the RGB (Red, Green and Blue). </br>
Use [this](https://www.rapidtables.com/web/color/RGB_Color.html) tool to help get your colour you need.

### ➕ Bold Font

```VBS
objSelection.Font.Bold = False
```

If you would like bold font change
```VBS
objSelection.Font.Bold = False > objSelection.Font.Bold = True
```

## The Font Attributes are applied for all text thats imported or set by LDAP or AD.
For Example: </br>

### Title

> Found on Lines 60-63, 163-166, 266-269, 374-377

```VBS
objSelection.Font.Bold = True
objSelection.Font.Size = 14
objSelection.Font.Color = RGB(102,102,102)
if (strTitle) Then objSelection.TypeText strTitle
```
### Academy or Buisness Name

>Found on lines 72-74, 169-173, 272-276 and 380-384

```VBS
objSelection.Font.Size = 14
objSelection.Font.Bold = False
objSelection.Font.Size = 13
objSelection.TypeText Chr(11) 
objSelection.TypeText strAcademyName
```
### Academy or Buisness Address

>Found on lines 66-70, 176-178, 279-281 and 387-389

```VBS
objSelection.Font.Size = 10
objSelection.TypeText Chr(11)
objSelection.TypeText strAddress
```
>The Following Below are <b>NOT</b> Included in the 'Reply Signiture'

### Your Imported Mail Address

> Found on lines 98-102, 203-207, 306-310

```VBS
objSelection.TypeText Chr(11)
objSelection.Font.Bold = True
if (strEmail) Then objSelection.TypeText "Email: "
objSelection.Font.Bold = False
objDoc.Hyperlinks.Add objSelection.Range, "mailto:" & strEmail,,,strEmail & Chr(11)
```
### Academy or Buisness website

> Found on lines 105-108, 209-212 and 311-314

```VBS
objSelection.Font.Bold = True
objSelection.TypeText "Website: "
objSelection.Font.Bold = False
objDoc.Hyperlinks.Add objSelection.Range, strWebsite,,,"www.company.org.uk"
```

## ✔️ Thats All !!
When ran it will create in the path "C:\Users\Username\AppData\Roaming\Microsoft\Signatures" Folders and Files something like this:

```CMD
d-----       24/06/2022     09:37                Full Signature 1_files
d-----       24/06/2022     09:37                Full Signature 2_files
d-----       24/06/2022     09:37                Full Signature_files
d-----       24/06/2022     09:37                Reply Signature_files
-a----       24/06/2022     09:37          46669 Full Signature 1.htm
-a----       24/06/2022     09:37        1706106 Full Signature 1.rtf
-a----       24/06/2022     09:37            440 Full Signature 1.txt
-a----       24/06/2022     09:37          46669 Full Signature 2.htm
-a----       24/06/2022     09:37        1760766 Full Signature 2.rtf
-a----       24/06/2022     09:37            440 Full Signature 2.txt
-a----       24/06/2022     09:37          46607 Full Signature.htm
-a----       24/06/2022     09:37        1724432 Full Signature.rtf
-a----       24/06/2022     09:37            440 Full Signature.txt
-a----       24/06/2022     09:37          39973 Reply Signature.htm
-a----       24/06/2022     09:37          39336 Reply Signature.rtf
-a----       24/06/2022     09:37            190 Reply Signature.txt
```
In outlook Click Signitures and they will all be there.




## ⭐️ Project assistance

If you want to say **thank you** or/and support active development of `Staff Outlook Signiture`:

- Add a [GitHub Star](https://github.com/Brandon-Roff/Staff-Outlook-Signiture) to the project.



Together, we can make this project **better** every day! 

