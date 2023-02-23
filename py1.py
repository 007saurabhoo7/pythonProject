from selenium import webdriver
import time

driver = webdriver.Chrome(executable_path="C:/Users/Chrom/chromedriver.exe")
driver.get("https://nobelpagedev.iworklab.com/")
driver.maximize_window()

#email_input = driver.find_element_by_xpath("//*[@id='root']/div/div/div[2]/div[1]/div/div[2]/div/form/div[1]/div/input").send_keys("Saurabh1@yopmail.com")

time.sleep(10)