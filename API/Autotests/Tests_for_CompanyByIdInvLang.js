// статус-код
pm.test
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});

// отклик
pm.test("Response time is less than 500ms", function () {
    pm.expect(pm.response.responseTime).to.be.below(500);
});

//хедеры
pm.test("Headers are valid", function() {
pm.expect(pm.response.headers.get('Content-Type')).to.eql('application/json');
pm.expect(pm.response.headers.get('Connection')).to.eql('keep-alive')
});

//поддержка языка
pm.test("Response when correct Accept-language", function() {
    pm.expect(pm.response.json()).to.have.any.keys("description", "description_lang")
});

if(pm.response.json().description_lang){
    pm.test("Default description_lang === EN", function() {
        pm.expect(pm.response.json().description_lang[0].translation_lang).to.eql("EN")}
    )};

    //реквест боди
let schema= 
{
  "type": "object",
  "properties": {
    "company_id": {
      "type": "integer"
    },
    "company_name": {
      "type": "string"
    },
    "company_address": {
      "type": "string"
    },
    "company_status": {
      "type": "string"
    },
    "description_lang": {
      "type": "array",
      "items": [
        {
          "type": "object",
          "properties": {
            "translation_lang": {
              "type": "string",
              "enum": [ "EN", "RU", "PL", "UA" ]
            },
            "translation": {
              "type": "string"
            }
          },
          "required": [
            "translation_lang",
            "translation"
          ]
        }
      ]
    }
  },
  "required": [
    "company_id",
    "company_name",
    "company_address",
    "company_status"

  ]
};
pm.test('Schema is valid', function() {
pm.response.to.have.jsonSchema(schema); 
});