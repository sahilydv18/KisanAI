import pandas as pd


def build_features(df: pd.DataFrame) -> pd.DataFrame:
    df = df.copy()
    df["sowing_month"] = pd.to_datetime(df["sowing_date"]).dt.month
    return df
