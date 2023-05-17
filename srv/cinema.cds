using cinema as db from '../db/cinema';

service CinemaAdmin{
    entity Rooms as projection on db.Rooms; //ca sa se faca view-uri
    entity Movies as projection on db.Movies;
    entity Actors as projection on db.Actors;
    entity MovieToRoomMapping as select from db.Movie_to_room_mappings;
}

