SELECT 
  email_domain, 
  COUNT(*) AS count
FROM users
WHERE email_domain LIKE '%.edu'
GROUP BY email_domain
ORDER BY count DESC
LIMIT 25;