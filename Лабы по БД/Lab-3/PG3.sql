USE cd;
SELECT surname FROM members
JOIN members ON surname.memind = recommendedby.memind
