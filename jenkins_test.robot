*** Settings ***
Library    SeleniumLibrary

Suite Setup    Open Browser  about:blank
Suite Teardown    Close All Browsers


*** Variables ***
${START_PAGE}    http://www.telkku.com
${MAIN_SITE}    css=main.site__main
${LOGO_YLE_TV1}    css=img[alt="Yle TV1"]
${CHANNEL_PAGE_HEADER_YLE_TV1}    css=div.channels-wrapper.channel_route.channelPage ul.channels li.channel header a[title="Yle TV1"]


*** Test Cases ***
See todays TV programs on Yle TV1
    Go To  ${START_PAGE}
	Wait Until Element Is Visible  ${MAIN_SITE}
	Click Element  ${LOGO_YLE_TV1}
	Element Should Be Visible  ${CHANNEL_PAGE_HEADER_YLE_TV1}
	

See todays TV Programs on Yle TV1 (Improved)
    Given I go to telkku.com
    When I click Yle TV1 logo
    Then I see todays TV programs on Yle TV1	
	

*** Keywords ***	
I go to telkku.com
    Go To  ${START_PAGE}
	Wait Until Element Is Visible  ${MAIN_SITE}
	
	
I click Yle TV1 logo
	Click Element  ${LOGO_YLE_TV1}           
	
	
I see todays TV programs on Yle TV1	
    Element Should Be Visible  ${CHANNEL_PAGE_HEADER_YLE_TV1}
