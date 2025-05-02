CREATE TABLE IF NOT EXISTS work_schedules (
  id_employee SMALLINT,
  schedule CHAR(3)[]
);

INSERT INTO work_schedules (id_employee, schedule)
VALUES 
(1, ARRAY['tue', 'thu']),
(2, '{"fri", "sun"}'),
(3, ARRAY['mon', 'tue', 'fri']),
(4, ARRAY['wed', 'sat']);


SELECT * FROM work_schedules;

SELECT schedule FROM work_schedules;

SELECT id_employee, schedule[1] FROM work_schedules;

SELECT id_employee, schedule FROM work_schedules
WHERE 'wed' = ANY(schedule)

UPDATE work_schedules
SET schedule = ARRAY['mon', 'thu', 'sun']
WHERE id_employee = 2

UPDATE work_schedules
SET schedule[2] = 'wed'
WHERE id_employee = 2