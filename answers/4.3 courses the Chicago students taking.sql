SELECT 
  'Chicago' AS city,
  SUM(CASE WHEN progress.learn_cpp IN ('started', 'completed') THEN 1 ELSE 0 END) AS cpp_students,
  SUM(CASE WHEN progress.learn_sql IN ('started', 'completed') THEN 1 ELSE 0 END) AS sql_students,
  SUM(CASE WHEN progress.learn_html IN ('started', 'completed') THEN 1 ELSE 0 END) AS html_students,
  SUM(CASE WHEN progress.learn_javascript IN ('started', 'completed') THEN 1 ELSE 0 END) AS javascript_students,
  SUM(CASE WHEN progress.learn_java IN ('started', 'completed') THEN 1 ELSE 0 END) AS java_students
FROM users
JOIN progress ON users.user_id = progress.user_id
WHERE users.city = 'Chicago';
