# T06 Exercise — Visibility and Secrets

Do not use real secrets.

Imagine a repository contains:

```text
README.md
src/app.py
.env
debug.log
customer-data.csv
```

The `.env` hypothetically contains an API token and the customer file is confidential.

Answer:
1. Which files should not be public?
2. Should a real API token be committed even to a private repository?
3. Does `.gitignore` remove a token already committed?
4. If a token was pushed, should it be revoked/rotated?
5. What should you review before changing visibility to public?

Create `.env.example` with placeholders only:

```text
API_KEY=YOUR_API_KEY_HERE
```
