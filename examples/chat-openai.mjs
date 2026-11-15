import OpenAI from 'openai';

const client = new OpenAI({
  baseURL: process.env.NIMO_BASE_URL || 'https://nimoai-gules.vercel.app/v1',
  apiKey: process.env.NIMO_API_KEY,
});

const response = await client.chat.completions.create({
  model: process.env.NIMO_MODEL || 'gpt-4o-mini',
  messages: [
    { role: 'user', content: 'Buatkan contoh fungsi debounce sederhana di TypeScript.' },
  ],
});

console.log(response.choices[0]?.message?.content);
