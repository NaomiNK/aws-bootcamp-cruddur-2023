SELECT 
  activities.uuid,
  users.display_name,
  users.handle,
  activities.created_at,
  activities.created_at,
  activities.expires_at,
FROM public.activities
INNER JOIN public.users ON users.uuid = activities.user_uuid
WHERE 
  activities_uuid = %(uuid)s
