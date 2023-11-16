SELECT COUNT(*) AS edu_learners_in_new_york
FROM users
WHERE email_domain LIKE '%.edu'
AND city = 'New York';
