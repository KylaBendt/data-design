-- drop tables
-- routes is dropped first since it has the foreign key
drop table if exists routes;
drop table if exists users;

-- create users table
create table users (
	userId              BINARY(16)   not null,
	userActivationToken CHAR(32),
	userEmail           VARCHAR(128) not null,
	userHash            CHAR(97)     not null,
	-- this creates a unique index, preventing duplicate emails
	unique (userEmail),
	primary key (userId)
);

-- create routes table
create table routes (
	routeId            BINARY(16) not null,
	routeUserId        BINARY(16) not null,
	routeCoordinates   LINESTRING,
	routeStartDateTime DATETIME(2),
	routeDetails       VARCHAR(2000),
	routeEndDateTime   DATETIME(2),
	foreign key (routeUserId) references users(userId),
	primary key (routeId)
);
