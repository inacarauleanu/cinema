namespace cinema;
using {cuid} from '@sap/cds/common';

entity Actors:cuid{
    NAME: String(64);
    MOVIE_ID: Integer;
}

entity Rooms {
    key ID       : Integer;
        NAME     : String(64);
        CAPACITY : Integer;
}



type Genre : String enum {
    action;
    comedy;
    drama;
    fantasy;
    horror;
    mystery;
    romance;
    thriller;
};


type Price : Decimal(5, 2);


entity Movies {
    key ID    : Integer;
        NAME  : String(64);
        PRICE : Price;
        GENRE : Genre;
};


entity Movie_to_room_mappings {
    key DAY        : Date      @odata.Type : 'Edm.String';
    key START_TIME : Timestamp @odata.Type : 'Edm.String';
    key MOVIE      : Association to one Movies;
    key ROOM       : Association to one Rooms;
}


DEFINE VIEW MOVIE_DETAILS AS
SELECT m.ID, m.NAME, PRICE, GENRE
FROM Movies AS m 
INNER JOIN Actors AS a ON m.ID = a.MOVIE_ID;