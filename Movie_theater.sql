CREATE TABLE "Movie" (
  "movie_id" serial,
  "movie_script" varchar(50),
  "movie_title"  varchar(50),
  PRIMARY KEY ("movie_id")
 
);

CREATE TABLE "Rewards" (
  "rewards_id" serial,
  "first_name" varchar(50),
  "last_name" varchar(50),
  "phone_number" varchar(30),
  "address" varchar(50),
  "collective_points" integer,
 PRIMARY key ("rewards_id")
);

CREATE TABLE "Customer" (
  "customer_id" serial,
  "phone_number" varchar(30),
  "ticket_number" varchar(20),
  "payment_info" varchar(30),
  "rewards_id" varchar(20),
  PRIMARY KEY ("customer_id"),
  CONSTRAINT "FK_Customer.rewards_id"
    FOREIGN KEY ("rewards_id")
      REFERENCES "Rewards"("rewards_id")
    
);

CREATE TABLE "Concessions" (
  "concession_id" serial,
  "product_name" varchar(30),

  "rewards" varchar(20),
  "customer_id" integer,
  PRIMARY KEY ("concession_id"),
      FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id")
);


CREATE TABLE "Tickets" (
  "ticket_id" serial,
  "seat_number" varchar(5),
  "theater_number" varchar(2),
  "time" integer,
  "total" varchar(8),
  "adult" varchar(10),
  "child" varchar(10),
  "rewards_id" varchar(15),
  "movie_id" integer,
  "customer_id" integer,
  PRIMARY KEY ("ticket_id"),
  CONSTRAINT "FK_Tickets.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id"),
  CONSTRAINT "FK_Tickets.movie_id"
    FOREIGN KEY ("movie_id")
      REFERENCES "Movie"("movie_id")
);