from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
import time
from bs4 import BeautifulSoup


driver = webdriver.Chrome(executable_path=r'./chromedriver.exe')
driver.maximize_window()
driver.implicitly_wait(2)
driver.get("https://www.sim.gov.ae/Public/ServiceChargeIndex.aspx")

# print(driver.title)
# search_bar = driver.find_element_by_name("q")
# search_bar.clear()
# search_bar.send_keys("getting started with python")
# search_bar.send_keys(Keys.RETURN)
#select_dropdown = driver.find_element_by_name("ctl00_PageContents_rdlMasterCommunity_ClientState")
#select_dropdown = driver.find_element_by_xpath("//[@id='ctl00_PageContents_rdlMasterCommunity_ClientState']")
# select_dropdown.click()

# ctl00_PageContents_btnMasterCommunity_ClientState:
# ctl00_PageContents_btnProperty_ClientState:
# ctl00_PageContents_rdlMasterCommunity_ClientState:
# ctl00_PageContents_rdlProject_ClientState:
# ctl00_PageContents_rdlUsage_ClientState:
# ctl00_PageContents_rdlYear_ClientState:
# ctl00$hdnCultureQuery:

select_mastercom = driver.find_element_by_id('ctl00_PageContents_rdlMasterCommunity_ClientState')
driver.execute_script("$(arguments[0]).click();", select_mastercom)
#select_mastercom.select_by_visible_text("Akoy")
mastercom = driver.find_element_by_xpath("//*[@id='ctl00_PageContents_rdlMasterCommunity_DropDown']/div/ul/li[2]")
mastercom.click()

time.sleep(3)

select_project = driver.find_element_by_id('ctl00_PageContents_rdlProject_ClientState')
time.sleep(3)
driver.execute_script("$(arguments[0]).click();", select_project)

project = driver.find_element_by_xpath("//*[@id='ctl00_PageContents_rdlProject_DropDown']/div/ul/li[2]")
project.click()
time.sleep(3)

submit = driver.find_element_by_xpath("//*[@id='ctl00_PageContents_btnCalculate']")
time.sleep(3)
submit.click()

driver.execute_script("arguments[0].setAttribute('style','visibility:visible;');", 'ctl00_PageContents_divResult')

driver.page_source
#print(driver.page_source)

doc = BeautifulSoup(driver.page_source, "html.parser")

stable = driver.find_element_by_class_name('ctl00_PageContents_divResult')

print(stable)

print(driver.current_url)

#driver.close()

