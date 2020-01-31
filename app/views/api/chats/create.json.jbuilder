json.id @chat.id
json.message @chat.message
json.blog_id @chat.blog.id
json.user_name @chat.user.name
json.date @chat.created_at.strftime("%Y/%m/%d %H:%M")