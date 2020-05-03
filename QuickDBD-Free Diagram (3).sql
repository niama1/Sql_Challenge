-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/SMtcHM
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "people" (
    "person_id" SERIAL   NOT NULL,
    "first_name" VARCHAR(15)   NOT NULL,
    "last_name" VARCHAR(15)   NOT NULL
);

