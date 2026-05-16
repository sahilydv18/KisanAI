## KisanAI Backend

FastAPI service with modular architecture.

### Run
```bash
uvicorn app.main:app --reload
```

### Endpoints
- `GET /health`
- `POST /auth/register`
- `POST /auth/login`
- `POST /chat`
- `GET /mandi?crop=&state=&city=`
- `POST /yield`

### Database
Configured for PostgreSQL via `DATABASE_URL`.
