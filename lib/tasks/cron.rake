# namespace :cron do
# 	desc "Send account emails"
# 	  task deliver_emails: :environment do
	    
# 	    # ... whatever logic you need

# 	    @all_shows = Show.all
#         @all_users = []
        
#         @all_shows.each do |as|
#             if Time.now.strftime("%A").downcase == as.day.downcase
#                 sliced_time = as.time.slice! "AM"
#                 sliced_time = as.time.slice! "PM"
#                 #converting time to seconds
#                 show_time = Time.parse(as.time)

#                 # current time
#                 current_time = (Time.now)
#                 elapsed_seconds = (show_time.to_f - current_time.to_f)
                
#                 if elapsed_seconds.to_i<=1800
#                     Favorite.all.each do |f|
#                         if f.favorited_id == as.id
#                             User.all.each do |u|
#                                 if u.id==f.user_id
                                   
#                                     @all_users << User.new("email"=>u.email,"title":as.title)
#                                 end
#                             end
#                         end
#                     end 
#                 end
#             end
# 	   	end

#        puts @all_users.inspect
# 	#      @all_users.each do |u|
# 	#       ActionMailer::Base.mail(
# 	# 	    from: "amyjethra@gmail.com",
# 	# 	    to:u[0],
# 	# 	    subject: "Your favorite show is about to start",
# 	# 	    body: "Hi, This is a reminder that your fav show #{u}"
# 	# 	  ).deliver
# 	#     end
# 	   end
# end