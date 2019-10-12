-- drop tables
-- routes is dropped first since it has the foreign key
drop table if exists routes;
drop table if exists users;

-- create users table
-- email does not need an explicit index because it is automatically created since it is a unique field
create table users(
   userId binary(16) not null,
   userActivationToken char(32),
	userEmail varchar(128) not null,
	userHash char(97) not null,
	unique(userEmail),
	primary key(userId)
);

-- create routes table
create table routes(
	routeId binary(16) not null,
	routeUserId binary(16) not null,
	routeCoordinates varchar(4000),
	routeDateTime datetime(6),
	routeDetails multipoint,
	routeDuration time,
	foreign key(routeUserId) references users(userId),
	primary key(routeId)
);
