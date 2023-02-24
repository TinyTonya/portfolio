/*  Случайным образом выбрать три вопроса (запрос) по дисциплине, тестирование по которой собирается проходить студент, занесенный в таблицу attempt последним, и добавить их в таблицу testing.id последней попытки получить как максимальное значение id из таблицы attempt.

*/

Insert into testing (attempt_id, question_id)

select attempt.attempt_id, question.question_id from attempt
inner join question using (subject_id)
where attempt.attempt_id =
(select max(attempt_id) from attempt)
order by rand(question.subject_id)
limit 3;
select * from testing;
