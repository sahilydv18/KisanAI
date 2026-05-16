# API Documentation

## Auth
- `POST /auth/register`
- `POST /auth/login`

## Chat
- `POST /chat`
  - request: `{ "message": "...", "history": ["..."] }`

## Mandi Prices
- `GET /mandi?crop=&state=&city=`

## Yield Prediction
- `POST /yield`
  - request: `{ "crop_type": "Rice", "land_area": 2.5, "region": "Punjab", "sowing_date": "2024-06-15" }`
