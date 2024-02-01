--Insert for Movies
INSERT INTO "Movie"(
movie_script,
movie_title
)
values
('script',
'Transformers'
);

--Insert for rewards
insert into "Rewards"(
first_name,
last_name,
phone_number,
address,
collective_points
)
values(
'Jane',
'Doe',
123-456-7890,
'1823 Candy Cane lane',
10000
);

--Insert for Tickets
insert into "Tickets"( 
seat_number,
theater_number,
time,
total,
adult,
child, 
rewards_id,
movie_id
)
values
( 'F1',
3,
10,
1,
1,
2,
'abcdefg',
1
);

--Insert into customer
insert into "Customer"
phone_number,
ticket_number,
payments_info
rewards_id
)
values
'1234567890',
1,
123456487856,
2
);
--Insert into concessions
insert into "Concessions"( 
product_name,
rewards
)
values(
'Skittles',
82
);

