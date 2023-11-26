use cd;
--Выведите наименования всех объектов клуба заглавными буквами, если они содержат в названии слово ‘Tennis’
SELECT upper(f.facility)
  FROM facilities f
  WHERE instr(f.facility, 'Tennis') > 0