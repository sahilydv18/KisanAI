from fastapi import APIRouter
from pydantic import BaseModel

router = APIRouter()

class YieldRequest(BaseModel):
    crop_type: str
    land_area: float
    region: str
    sowing_date: str

@router.post("")
def predict_yield(payload: YieldRequest):
    base = 18.0
    area_factor = min(payload.land_area * 0.6, 8)
    prediction = base + area_factor
    return {
        "expected_yield": round(prediction, 2),
        "risk_factors": ["irregular rainfall", "late sowing"],
        "weather_impact": "moderate",
        "confidence": 0.78,
    }
