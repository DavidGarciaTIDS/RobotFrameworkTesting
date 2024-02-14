
*** Variables ***
${BROWSER}=                     ff
${URL}=                         https://the-internet.herokuapp.com/

#Test
${AddRemoveElements}=           xpath=//*[@id="content"]/ul/li[2]/a
${BrokenImages}=                xpath=//*[@id="content"]/ul/li[4]/a
${BasicAuth}=                   xpath=//*[@id="content"]/ul/li[3]/a

#Landing
${LandingPageTitle}=            Welcome to the-internet

##AddRemoveElements
${AddRemovePage}=               Add/Remove Elements
${NumberOfElements}=            20
${AddedElements}=               xpath=//*[@id="content"]/div/button
${DeleteElements}=              xpath=//*[@id="elements"]/button
${AddElementButton}=            xpath=//*[@id="content"]/div/button

#BasicAuth
${BAUsername}=                  admin
${BAPassword}=                  admin
${BAUsernameBAD}=               admin1
${BAPasswordBAD}=               admin1

#BrokenImages
${BrokenImagesTitle}=           Broken Images
${BrokenImageContainer}=        xpath=//*[@id="content"]/div