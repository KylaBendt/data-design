drop table if exists routes;
drop table if exists users;

create table users(
   userId binary(16) not null,
   userActivationToken char(32),
	userEmail varchar(128) not null,
	userHash char(97) not null,
	unique(userEmail),
	primary key(userId)
);

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
