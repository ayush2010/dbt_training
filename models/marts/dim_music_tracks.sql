select 
    tracks_joined_to_albums_artists_genre_mediatype.track_id,
    tracks_joined_to_albums_artists_genre_mediatype.album_id,
    tracks_joined_to_albums_artists_genre_mediatype.mediatype_id,
    tracks_joined_to_albums_artists_genre_mediatype.genre_id,
    tracks_joined_to_albums_artists_genre_mediatype.track_name,
    tracks_joined_to_albums_artists_genre_mediatype.track_composer,
    tracks_joined_to_albums_artists_genre_mediatype.album_title,
    tracks_joined_to_albums_artists_genre_mediatype.artist_name,
    tracks_joined_to_albums_artists_genre_mediatype.mediatype_name,
    tracks_joined_to_albums_artists_genre_mediatype.genre_name,
    tracks_joined_to_albums_artists_genre_mediatype.track_length_ms,
    tracks_joined_to_albums_artists_genre_mediatype.track_length_seconds,
    tracks_joined_to_albums_artists_genre_mediatype.track_length_mins,
    tracks_joined_to_albums_artists_genre_mediatype.bytes,
    tracks_joined_to_albums_artists_genre_mediatype.unit_price
from {{ ref('int_tracks_joined_to_albums_artists_genre_mediatype')}} 
tracks_joined_to_albums_artists_genre_mediatype