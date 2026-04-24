CREATE TABLE IF NOT EXISTS weather (
    id BIGSERIAL PRIMARY KEY,
    city TEXT NOT NULL CHECK (trim(city) <> ''),
    temperature_celsius DOUBLE PRECISION NOT NULL,
    description TEXT NOT NULL,
    humidity_percent INTEGER CHECK (humidity_percent BETWEEN 0 AND 100),
    wind_speed_mps DOUBLE PRECISION NOT NULL,
    fetched_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
