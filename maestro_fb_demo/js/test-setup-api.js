const baseUrl = 'http://127.0.0.1:8090';
const testSetupUrl = `${baseUrl}/api/`;

var create = function (recordName, type, traits) {
  // Convert string of multiple traits into array. Also handle no traits.
  const traitsArray = (traits ? traits.split(' ') : []);

  const requestBody = JSON.stringify({ type: type, traits: traitsArray });
  return http.post(`${testSetupUrl}/${recordName}`, {
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    },
    body: requestBody,
  });
};

var destroy = function (recordName, id) {
  return http.delete(`${testSetupUrl}/${recordName}/${id}`, {
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    },
  });
};

output.create = create;
output.destroy = destroy;
