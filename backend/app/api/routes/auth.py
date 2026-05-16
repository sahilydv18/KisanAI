from fastapi import APIRouter
from pydantic import BaseModel

router = APIRouter()

class AuthRequest(BaseModel):
    identifier: str
    otp: str

@router.post("/register")
def register(payload: AuthRequest):
    return {"token": "mock-token", "user": payload.identifier}

@router.post("/login")
def login(payload: AuthRequest):
    return {"token": "mock-token", "user": payload.identifier}
