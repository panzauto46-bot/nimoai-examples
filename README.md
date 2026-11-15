# Nimo AI — Contoh Integrasi API & Coding Agent

Contoh integrasi resmi untuk menggunakan **[Nimo AI](https://nimoai-gules.vercel.app/)** — Unified AI API Gateway (satu API key untuk berbagai model OpenAI-compatible, Anthropic-compatible, dan Responses API dengan pembayaran fleksibel termasuk QRIS).

- **Website:** https://nimoai-gules.vercel.app/
- **Katalog Model:** https://nimoai-gules.vercel.app/models
- **Harga & Paket:** https://nimoai-gules.vercel.app/pricing
- **Dokumentasi:** https://nimoai-gules.vercel.app/docs
- **Base URL API:** `https://nimoai-gules.vercel.app/v1`

---

## Fitur Utama

- **Satu API Key untuk Banyak Model** — Akses berbagai model AI populer dari satu dashboard.
- **OpenAI, Anthropic & Responses Compatible** — Mendukung `/v1/chat/completions`, `/v1/responses`, `/v1/messages`, streaming (SSE), dan tool calling.
- **Pembayaran Praktis (QRIS / Rupiah)** — Tidak perlu kartu kredit internasional.
- **Siap untuk Coding Agent** — Bisa dipakai di Cursor, OpenCode, Codex CLI, OpenAI SDK, dan Anthropic SDK.

---

## Mulai Cepat

1. Daftar atau masuk di [https://nimoai-gules.vercel.app/](https://nimoai-gules.vercel.app/).
2. Buat API key di dashboard.
3. Salin `.env.example` menjadi `.env` lalu isi `NIMO_API_KEY`.

### Menggunakan `curl`

Lihat [examples/chat-curl.sh](examples/chat-curl.sh).

### Menggunakan Node.js (OpenAI SDK)

```bash
npm install openai
NIMO_API_KEY=sk-your-key node examples/chat-openai.mjs
```

### Menggunakan Python (OpenAI SDK)

```bash
pip install openai
NIMO_API_KEY=sk-your-key python examples/chat-openai.py
```

### Menggunakan di Coding Agent (Cursor / OpenCode)

Atur **Custom OpenAI Base URL** ke:

```text
https://nimoai-gules.vercel.app/v1
```

Lalu isi API key Anda dari dashboard Nimo AI dan pilih nama model sesuai daftar di [https://nimoai-gules.vercel.app/models](https://nimoai-gules.vercel.app/models).
