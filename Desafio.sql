create database videogames;

create table if not exists games(
id_game INT NOT NULL,
game_name VARCHAR(40) NOT NULL,
id_type VARCHAR(20) NOT NULL,
id_company INT NOT NULL,
id_plataform INT NOT NULL,
release_year DATE NOT NULL,
PRIMARY KEY(id_game)
);

create table if not exists users(
id_user VARCHAR(20) NOT NULL,
name VARCHAR(20) NOT NULL,
lastname VARCHAR(20) NOT NULL,
age DATE NOT NULL,
email VARCHAR(40) NOT NULL,
PRIMARY KEY(id_user)
);

create table if not exists sale(
id_sale INT NOT NULL,
id_user VARCHAR(20) NOT NULL,
id_game INT NOT NULL,
total_sales INT NOT NULL,
PRIMARY KEY(id_sale)
);

create table if not exists plataforms(
id_plataform INT NOT NULL,
plataform_name VARCHAR(20) NOT NULL,
PRIMARY KEY(id_plataform)
);

create table if not exists videogame_company(
id_company INT NOT NULL,
company_name VARCHAR(30) NOT NULL,
PRIMARY KEY(id_company)
);

alter table games
add constraint fk_plataforms FOREIGN KEY (id_plataform) references plataforms(id_plataform) on delete cascade;

alter table games
add constraint fk_company FOREIGN KEY (id_company) references videogame_company(id_company) on delete cascade;

alter table sale
add constraint fk_user FOREIGN KEY (id_user) references users(id_user) on delete cascade;

alter table sale
add constraint fk_game FOREIGN KEY (id_game) references games(id_game) on delete cascade;





