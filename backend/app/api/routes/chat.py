from fastapi import APIRouter
from pydantic import BaseModel

router = APIRouter()

class ChatMessage(BaseModel):
    message: str
    history: list[str] = []

@router.post("")
def chat(payload: ChatMessage):
    response = "Based on your region and season, consider soybean or maize."
    return {
        "reply": response,
        "advice_type": "crop_recommendation",
        "confidence": 0.76,
    }
