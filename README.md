# KisanAI

AI-powered agriculture platform for Indian farmers — **mobile-first Flutter app** + **FastAPI backend** + **ML pipeline stubs**.

> **Status:** MVP scaffolding with production-ready architecture and realistic UI screens. All APIs and ML flows are mocked and ready for real data integrations.

---

## ✅ What’s Included

### Mobile (Flutter)
- Material 3, light/dark theme, responsive layouts
- Riverpod state management
- Onboarding + Auth flow (email/OTP placeholder)
- AI Crop Advisory Chatbot UI (chat history, quick chips, voice input button)
- Mandi Price Discovery (search, filter, map, watchlist)
- Yield Prediction form + result cards + charts
- Profile/settings + notification toggles
- Empty/loading/error states

### Backend (FastAPI)
- Modular architecture
- REST APIs for auth, chat, mandi prices, yield prediction
- Mock dataset integration
- Ready for PostgreSQL
- OpenAPI docs enabled by default

### ML
- Reusable pipeline stubs (feature engineering, training, prediction)
- Mock data loaders for ISRO/IMD/data.gov.in future integration

---

## 📁 Repository Structure

```
KisanAI/
├── mobile/               # Flutter app
├── backend/              # FastAPI backend
├── ml/                   # ML pipelines & notebooks (stubs)
├── data/mock/            # Mock datasets for local testing
├── docs/                 # API docs & architecture notes
└── README.md
```

---

## 🚀 Quick Start

### 1) Mobile (Flutter)
```bash
cd mobile
flutter pub get
flutter run
```

> If you need Android/iOS native folders, run:
```bash
flutter create .
```

### 2) Backend (FastAPI)
```bash
cd backend
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
cp .env.example .env
uvicorn app.main:app --reload
```

### 3) ML
```bash
cd ml
pip install -r requirements.txt
python pipeline/train.py
```

---

## 🔐 Auth (Placeholder)
- `/auth/register`
- `/auth/login`

Returns a mock access token for now.

---

## 📘 API Docs
FastAPI auto-docs:
- Swagger UI: `/docs`
- ReDoc: `/redoc`

---

## 🧱 Architecture Highlights

- **Flutter**: Clean architecture-inspired, feature-first structure
- **Backend**: Modular FastAPI with routers + schemas + db/session layer
- **ML**: Modular pipelines ready to plug satellite + weather data

---

## ✅ Next Steps
- Integrate real mandi APIs (data.gov.in, Agmarknet)
- Replace mock yield predictor with trained ML model
- Plug in LLM provider for multilingual chatbot
- Add push notification provider (FCM)

---

## 🧑‍💻 Maintainer
Built for **sahilydv18/KisanAI**.
