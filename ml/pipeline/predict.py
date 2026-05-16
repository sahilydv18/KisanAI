from pipeline.features import build_features
import pandas as pd


def predict(sample: dict) -> dict:
    df = pd.DataFrame([sample])
    df = build_features(df)
    # Placeholder heuristic until real model is loaded
    expected = 18 + min(sample.get("land_area", 1) * 0.6, 8)
    return {
        "expected_yield": round(expected, 2),
        "confidence": 0.75,
    }
