CREATE TABLE "riders" (
    "id" INTEGER,
    "name" TEXT,
    PRIMARY KEY ("id")
); 

CREATE TABLE "stations" (
    "id" INTEGER,
    "name" TEXT, 
    "line" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "visits" (
    "rider_id" INTEGER,
    "station_id" INTEGER
); 