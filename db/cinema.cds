namespace cinema;

entity Rooms{
    ID:UUID;
    NAME: String(64);
    CAPACITY: Integer;
}


entity Movies{
    ID:UUID;
    NAME: String(64);
    ACTORS: String(64);
    ROOM_NAME: String(64);
    TIME: Integer;
}

entity Actors{
    ID:UUID;
    NAME: String(64);
    MOVIE_ID: String(64);
}
