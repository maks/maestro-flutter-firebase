const userName = Math.floor(Math.random() * 10000)+mrtest;
const response = http.get(testSetupApiUrl+'/adduser?username='+userName)

output.testUser = json(response.body);

if (response.ok) {
  console.log(`Successfully created test user:`+output.testUser.email+" pw:"+output.testUser.password);
} else {
  throw new Error(`Failed to create test user: ${userName}`);
}

