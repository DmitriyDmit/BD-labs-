-- Active: 1698134321747@@127.0.0.1@3306@cd
use cd;
-- Выведите наименования всех объектов клуба заглавными буквами, если они содержат в названии слово ‘Tennis’
SELECT upper(f.facility)
  FROM facilities f
  WHERE instr(f.facility, 'Tennis') > 0