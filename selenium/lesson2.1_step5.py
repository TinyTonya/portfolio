from selenium import webdriver
from selenium.webdriver.common.by import By
import time 
import math

link = "https://suninjuly.github.io/math.html"
def calc(x):
  return str(math.log(abs(12*math.sin(int(x)))))
try:
    browser = webdriver.Chrome()
    browser.get(link)

    x_element = browser.find_element(By.ID, "input_value")
    x = x_element.text
    y = calc(x)

    input_el = browser.find_element(By.CLASS_NAME, "form-control")
    input_el.send_keys(y)
    checkbox = browser.find_element(By.CSS_SELECTOR, "[type='checkbox']")
    checkbox.click()
    radio = browser.find_element(By.CSS_SELECTOR, "[value='robots']")
    radio.click()
    button = browser.find_element(By.XPATH, "//button[text()='Submit']")
    button.click()

finally:
    # успеваем скопировать код за 10 секунд
    time.sleep(10)
    # закрываем браузер после всех манипуляций
    browser.quit()

# не забываем оставить пустую строку в конце файла