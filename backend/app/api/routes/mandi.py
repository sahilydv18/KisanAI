from fastapi import APIRouter

router = APIRouter()

mock_data = [
    {"mandi": "Pune APMC", "crop": "Onion", "price": 1650, "state": "Maharashtra", "city": "Pune"},
    {"mandi": "Solapur Market", "crop": "Jowar", "price": 2100, "state": "Maharashtra", "city": "Solapur"},
    {"mandi": "Nashik Market", "crop": "Tomato", "price": 1200, "state": "Maharashtra", "city": "Nashik"},
]

@router.get("")
def list_prices(crop: str | None = None, state: str | None = None, city: str | None = None):
    results = mock_data
    if crop:
        results = [r for r in results if r["crop"].lower() == crop.lower()]
    if state:
        results = [r for r in results if r["state"].lower() == state.lower()]
    if city:
        results = [r for r in results if r["city"].lower() == city.lower()]
    return {"results": results}
