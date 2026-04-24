-- Indexes for efficient querying on city and fetch time
CREATE INDEX IF NOT EXISTS idx_weather_city ON weather (city);
CREATE INDEX IF NOT EXISTS idx_weather_fetched_at ON weather (fetched_at);
