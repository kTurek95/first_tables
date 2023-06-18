create schema trip_plan;

create table trip_plan.main(
    id serial primary key,
    start date,
    stop date,
    id_wyjazd int,
    id_przyjazd int,
    ulga_id int
);

create table trip_plan.trip_cities (
    id_wyjazd int,
    id_przyjazd int,
    cena int
);

create table trip_plan.discount(
    id serial primary key,
    ulga float
);

create table trip_plan.cities (
    id serial primary key,
    miasto varchar(50) unique,
    szer_geo float,
    dlug_geo float
);

insert into
    trip_plan.cities
values (
    default,
    'Gdynia',
    54.5,
    18.55
    ), (
    default,
    'Wrocław',
    51.1,
    17.03
    ), (
    default,
    'Warszawa',
    52.21,
    21
    ), (
    default,
    'Kraków',
    19.9,
    54.06
    ), (
    default,
    'Zakopane',
    49.3,
    19.9);

insert into
    trip_plan.trip_cities (id_wyjazd, id_przyjazd, cena)
values
    (1, 5, 75.3),
    (2, 3, 55.5),
    (3, 4, 63.5);

insert into
    trip_plan.discount
values (
    1,
    0.13
    ), (
    2,
    0.3
    ), (
    3,
    0.43);

insert into
    trip_plan.main (id, start, stop, id_wyjazd, id_przyjazd, ulga_id)
values
    (default, date '1998-08-12', date '1998-09-12 22:45', 1, 5, 1),
    (default, date '1999-06-19', date '1999-09-19 03:45', 2, 3, 3),
    (default, date '1999-08-11', date '1999-08-11 11:45', 3, 4, 1),
    (default, date '1999-12-08', date '1999-12-08 15:30', 1, 5, 2);


