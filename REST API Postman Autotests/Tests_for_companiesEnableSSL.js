// статус-код 
pm.test("Status code is 301", function () {
    pm.response.to.have.status(301);
});

// время отклика
pm.test("Response time is less than 500ms", function () {
    pm.expect(pm.response.responseTime).to.be.below(500);
});

//Запрос прошел по http
pm.test("Request by http", function() {
pm.expect(pm.request.url.protocol).to.eql("http")
});

//хедеры
pm.test("Headers is vaild", function() {
    pm.expect(pm.response.headers.get('Connection')).to.eql('keep-alive');
    pm.expect(pm.response.headers.get('Location')).to.eql('https://send-request.me/api/companies/');
});