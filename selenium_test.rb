require 'selenium-webdriver'


driver = Selenium::WebDriver.for:chrome

driver.get "https://google.com"

elem = driver.find_element(:name, 'q')      #q is the namespace of searchbox element
elem.send_keys "software automated testing"    #send_keys method used to write text
elem.submit
sleep 5