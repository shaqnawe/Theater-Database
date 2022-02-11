CREATE TABLE "customer" (
  "id" serial PRIMARY KEY,
  "first_name" varchar(50),
  "last_name" varchar(50),
  "email" varchar(55)
);

CREATE TABLE "ticket" (
  "id" int PRIMARY KEY,
  "movie_name" varchar(100),
  "movie_time" timestamp,
  "movie_id" int,
  "staff_id" int,
  "amount" float
);

CREATE TABLE "concession" (
  "id" int PRIMARY KEY,
  "item_name" varchar(50),
  "amount" float,
  "customer_id" int,
  "staff_id" int
);

CREATE TABLE "movie" (
  "id" serial PRIMARY KEY,
  "title" varchar(100),
  "showtime" timestamp
);

CREATE TABLE "payment" (
  "id" int PRIMARY KEY,
  "customer_id" int,
  "concession_amount" float,
  "ticket_amount" float,
  "ticket_id" int,
  "concession_id" int
);

CREATE TABLE "staff" (
  "id" serial PRIMARY KEY,
  "first_name" varchar(50),
  "last_name" varchar(50),
  "email" varchar(55)
);

CREATE TABLE "receipt" (
  "id" serial PRIMARY KEY,
  "fname" varchar(55),
  "lname" varchar(55),
  "ticket_id" int,
  "movie_id" int,
  "title" varchar(50),
  "showtime" timestamp,
  "customer_id" int,
  "staff_id" int
);

ALTER TABLE "payment" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("id");

ALTER TABLE "ticket" ADD FOREIGN KEY ("movie_id") REFERENCES "movie" ("id");

ALTER TABLE "ticket" ADD FOREIGN KEY ("staff_id") REFERENCES "staff" ("id");

ALTER TABLE "payment" ADD FOREIGN KEY ("id") REFERENCES "staff" ("id");

ALTER TABLE "concession" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("id");

ALTER TABLE "receipt" ADD FOREIGN KEY ("movie_id") REFERENCES "movie" ("id");

ALTER TABLE "receipt" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("id");

ALTER TABLE "receipt" ADD FOREIGN KEY ("staff_id") REFERENCES "staff" ("id");

ALTER TABLE "concession" ADD FOREIGN KEY ("staff_id") REFERENCES "staff" ("id");

ALTER TABLE "receipt" ADD FOREIGN KEY ("ticket_id") REFERENCES "ticket" ("id");

ALTER TABLE "payment" ADD FOREIGN KEY ("ticket_id") REFERENCES "ticket" ("id");

ALTER TABLE "payment" ADD FOREIGN KEY ("concession_id") REFERENCES "concession" ("id");
