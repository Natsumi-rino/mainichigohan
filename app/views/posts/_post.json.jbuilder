json.extract! post, :id, :title, :whattime, :howmany, :free, :website, :created_at, :updated_at
json.url post_url(post, format: :json)
