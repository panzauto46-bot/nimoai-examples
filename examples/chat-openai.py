import os
from openai import OpenAI

client = OpenAI(
    base_url=os.getenv("NIMO_BASE_URL", "https://nimoai-gules.vercel.app/v1"),
    api_key=os.environ["NIMO_API_KEY"],
)

response = client.chat.completions.create(
    model=os.getenv("NIMO_MODEL", "gpt-4o-mini"),
    messages=[
        {"role": "user", "content": "Buatkan contoh fungsi validasi email di Python."}
    ],
)

print(response.choices[0].message.content)
