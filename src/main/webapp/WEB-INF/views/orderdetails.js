function getItems() {
    $('#tableid').DataTable( {
      "ajax": {
          "url": "http://localhost:9090/list2",
          "dataSrc": ""
      },
      "columns": [
          { "data": "id" },
          { "data": "ordername" },
          { "data": "buyername" },
          { "data": "res" },
          { "data": "location" }, 
          { "data": "date" },
          { "data": "price" },
          { "data": "cus_id"}
      ]
  } );
  }