import pandas as pd
from sklearn.ensemble import RandomForestRegressor
from sklearn.model_selection import train_test_split

from pipeline.data_sources import load_mock_yield_data
from pipeline.features import build_features


def train_model(data_path: str = "../data/mock/yield_samples.csv"):
    df = load_mock_yield_data(data_path)
    df = build_features(df)
    X = df[["land_area", "sowing_month"]]
    y = df["yield"]
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
    model = RandomForestRegressor(n_estimators=50, random_state=42)
    model.fit(X_train, y_train)
    score = model.score(X_test, y_test)
    print(f"Model R2 score: {score:.2f}")


if __name__ == "__main__":
    train_model()
