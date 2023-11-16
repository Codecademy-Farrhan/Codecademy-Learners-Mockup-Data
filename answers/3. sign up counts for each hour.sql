SELECT 
  DATE_FORMAT(sign_up_at, '%Y-%m-%d %H:00:00') AS sign_up_hour,
  COUNT(*) AS sign_up_count
FROM users
GROUP BY sign_up_hour
ORDER BY sign_up_count DESC;