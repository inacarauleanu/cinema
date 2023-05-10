namespace cinema;
using {cuid} from '@sap/cds/common';

entity Rooms : cuid {
    NAME     : String(64);
    CAPACITY : Integer;
}

entity Movies: cuid{
    NAME: String(64);
    ACTORS: String(64);
    ROOM_NAME: String(64);
    TIME: Integer;
}

entity Actors:cuid{
    NAME: String(64);
    MOVIE_ID: String(64);
}
