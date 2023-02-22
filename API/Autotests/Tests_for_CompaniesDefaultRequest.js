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

//проверка работы query-параметра "limit" по умолчанию
let DataJson = pm.response.json().data;
pm.test("Len of JSON with default limit", function() {
let countLenData = Object.keys(DataJson).length
pm.expect(countLenData).to.eql(3)
});


// валидация response body 
let schema = {
  "type": "object",
  "properties": {
    "data": {
      "type": "array",
      "items":
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
              "type": "string",
              "enum": [ "ACTIVE", "CLOSED", "BANKRUPT" ]
            }
          },
          "required": [
            "company_id",
            "company_name",
            "company_address",
            "company_status"
          ]
        }
    },
    "meta": {
      "type": "object",
      "properties": {
        "limit": {
          "type": "integer"
        },
        "offset": {
          "type": "integer"
        },
        "total": {
          "type": "integer"
        }
      },
      "required": [
        "total"
      ]
    }
  },
  "required": [
    "data",
    "meta"
  ]
};
pm.test('Schema is valid', function() {
pm.response.to.have.jsonSchema(schema); 
});