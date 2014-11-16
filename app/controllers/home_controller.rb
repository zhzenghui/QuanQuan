class HomeController < ActionController::Base

  layout "application"

	def index

    if current_user
      current_user.name = "hari"
      current_user.has_role = "wiki_editor"
      current_user.has_role = "admin"
      
      current_user.save
    end 
	end 


  def create 


  	current_user.avatar = params[:avatar]
  	current_user.save

  	render 'avatar'
  end


  def avatar
    @user = current_user

  end

  def about
    
  end

  def about_me
    
  end
  
  def help
  end
  
  
  def contact
  end
end