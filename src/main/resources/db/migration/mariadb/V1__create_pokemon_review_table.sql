
create table pokemon (
    pokemon_id integer not null auto_increment,
    name varchar(255) not null,
    type enum ('BUG','DARK','DRAGON','ELECTRIC','FAIRY','FIGHTING','FIRE','FLYING','GHOST','GRASS','GROUND','ICE','NORMAL','POISON','PSYCHIC','ROCK','STEEL','WATER'),
    primary key (pokemon_id)
) engine=InnoDB;

create table review (
    review_id integer not null auto_increment,
    stars integer not null,
    content varchar(255),
    title varchar(255) not null,
    pokemon_id integer,
    primary key (review_id)
) engine=InnoDB;

alter table review add constraint FK_pokemon foreign key (pokemon_id) references pokemon (pokemon_id);