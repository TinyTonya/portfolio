const puppeteer = require('puppeteer');

const URL_TEST = 'https://qa-routes.praktikum-services.ru/';

async function testTaxiResult() {
    const browser = await puppeteer.launch({headless: false, slowMo: 100});
    const page = await browser.newPage();
    await page.goto(URL_TEST);

    const hoursInput = await page.$('#form-input-hour');
    await hoursInput.type('08');

    await browser.close();
}

testTaxiResult();