select 
    tracks.track_id,
    albums.album_id,
    media_types.mediatype_id,
    genres.genre_id,
    tracks.track_name,
    tracks.track_composer,
    albums.album_title,
    artists.artist_name,
    media_types.mediatype_name,
    genres.genre_name,
    tracks.track_length_ms,
    tracks.track_length_mins,
    tracks.track_length_seconds,
    tracks.bytes,
    tracks.unit_price
from {{ ref('stg_music__tracks') }} tracks
left join {{ ref('stg_music__albums') }} albums
    on tracks.album_id = albums.album_id
left join {{ ref('stg_music__media_types')}} media_types
    on tracks.media_type_id = media_types.mediatype_id
left join {{ ref('stg_music__genres') }} genres
    on tracks.genre_id = genres.genre_id
left join {{ ref('stg_music__artists')}} artists 
    on albums.artist_id = artists.artist_id