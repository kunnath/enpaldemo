test('API test', async ({ request }) => {
  const response = await request.post('/api/login', {
    data: { email: 'test@test.com', password: '123456' }
  });

  expect(response.ok()).toBeTruthy();
});