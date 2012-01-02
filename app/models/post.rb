class Post < ActiveRecord::Base
  
  attr_accessible  :dialogue, :title, :pub, :adpub , :clip, :waiting
  belongs_to :user
	default_scope :order => 'posts.created_at DESC'
	
end	
	
	
	def set_user_id
	 @post.user_id = current_user.id 
	 $id = @post.id
	 @post.adpub = true
#	 @post.pub = true
	 @post.title = "id"
	 @post.waiting = true
	 @post.dialogue = $dialogue
	end
	
	def init_dialogue
		$dialogue = "<span class='mod'>Welcome to Pindule, please decide if your post is public, and type your excesses into the text box to see if we can negotiate our forgiveness</span>"
	end
	
	def clear_clip
		@post.clip = ""
		$typed_in = ""
	end
	
	def upup_dialogue
		if !$typed_in.nil?
			set_typed_in
		#	@post.dialogue = @post.dialogue + "<br><br><span class='user'>" + $typed_in + "</span>"
			@post.waiting = true
		#	print "\a";
		end
	end
	
	def check_for_waiting
	#    if $counter.nil
	#		$counter=0
	#	  end
	#	if $counter > 0
	#	  print "\a"
	#	end
	end
	
	def out_edit_dialogue
		@post.dialogue.html_safe
	end
	
	def set_typed_in
		$typed_in = @post.clip 
	#	print "\a"
	end
	
	def set_waiting_to_true
		@post.waiting = true	
	end
	
