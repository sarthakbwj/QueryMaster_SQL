CREATE TABLE "cards" (
    "id" INTEGER, 
    "name" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "stations" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE, 
    "line" INTEGER NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "visits" (
    "id" INTEGER,
    "rider_id" INTEGER,
    "station_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("rider_id") REFERENCES "riders"("id"),
    FOREIGN KEY ("station_id") REFERENCES "station"("id")
);


