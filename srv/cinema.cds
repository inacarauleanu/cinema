using cinema as db from '../db/cinema';

service CinemaAdmin{
    entity Rooms as projection on db.Rooms;
}