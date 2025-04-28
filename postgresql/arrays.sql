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

