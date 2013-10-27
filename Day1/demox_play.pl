daytime.
clear_skies.

round(earth).
round(ball).

small(mouse).
small(ball).

time_to_play :- daytime, clear_skies.
suitable_for_playing_with(X) :- round(X), small(X).
does_child_want_to_play_with(X) :- time_to_play, suitable_for_playing_with(X).