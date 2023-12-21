-- 1. Selezionare tutti gli studenti nati nel 1990
SELECT *
FROM `students`
WHERE YEAR(`date_of_birth`) = 1990;

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti
SELECT *
FROM `courses`
WHERE `cfu` > '10';

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT * 
FROM `students` 
WHERE YEAR(CURRENT_DATE) - YEAR(`date_of_birth`) >= 30 AND MONTH(CURRENT_DATE) >= MONTH(`date_of_birth`) AND DAY(CURRENT_DATE) >= DAY(`date_of_birth`);

SELECT *
FROM `students`
WHERE date_of_birth <= CURDATE() - INTERVAL 30 YEAR;

-- 4. Selezionare tutti i corsi del primo semestre del primo anno di qualsiasi corso di laurea
SELECT * 
FROM `courses` 
WHERE `period` = 'I semestre' AND `year` = '1';

-- 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)
SELECT * 
FROM `exams`
WHERE `date` = '2020-06-20' AND `hour` >= '14:00:00';

-- 6. Seleziona tutti i corsi di laurea magistrale
SELECT * 
FROM `degrees` 
WHERE `level` = 'magistrale';

-- 7. Da quanti dipartimenti è composta l'università ?
SELECT COUNT(*) 
FROM `departments`;

-- 8. Quanti sono gli insegnanti che non hanno un numero di telefono ?
SELECT COUNT(*) 
FROM `teachers`
WHERE `phone` IS NULL;