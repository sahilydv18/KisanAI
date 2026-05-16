import pandas as pd


def load_mock_yield_data(path: str) -> pd.DataFrame:
    return pd.read_csv(path)
