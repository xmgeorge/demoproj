set :deploy_to, "$HOME/testing"

role :app, "localhost"

# Email notifications
#set :notify_emails, ["admin@xminds.com", "abcd@xminds.com" ]
set :notify_emails, ["adminteam@xminds.in"]

Notifier.configure do |config|
  config[:recipient_addresses] = notify_emails
  config[:subject_prepend] = "[DEPLOY]"
  config[:site_name] = "wwwt.demoproj.xminds.com"
  config[:email_content_type] = "text/html" # OR "text/plain" if you want the plain text version of the email
  config[:sections] = %w(deployment release_data source_control latest_release previous_release)
end
