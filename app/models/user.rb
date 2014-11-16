class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Database authenticatable
  field :email,              :type => String, :default => ""
  field :encrypted_password, :type => String, :default => ""

  ## Recoverable
  field :reset_password_token,   :type => String
  field :reset_password_sent_at, :type => Time

  ## Rememberable
  field :remember_created_at, :type => Time

  ## Trackable
  field :sign_in_count,      :type => Integer, :default => 0
  field :current_sign_in_at, :type => Time
  field :last_sign_in_at,    :type => Time
  field :current_sign_in_ip, :type => String
  field :last_sign_in_ip,    :type => String
  
  ## Confirmable
  # field :confirmation_token,   :type => String
  # field :confirmed_at,         :type => Time
  # field :confirmation_sent_at, :type => Time
  # field :unconfirmed_email,    :type => String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, :type => Integer, :default => 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    :type => String # Only if unlock strategy is :email or :both
  # field :locked_at,       :type => Time

  field :has_role,  :type => String
  field :verified, type: Mongoid::Boolean, :default => false
  field :state, type: Integer, default: 1
  field :guest, type: Mongoid::Boolean, default: false
  field :replies_count, type: Integer, default: 0
  field :private_token
  field :favorite_topic_ids, type: Array, default: []
  field :location
  field :location_id, type: Integer


  index login: 1
  index email: 1
  index location: 1
  index({private_token: 1},{ sparse: true })


  # Quan的后添加
  field :name
  field :notifiction_push,    :type => Integer, :default => 0
  # field :loding_image_network,  :type => Integer, :defaule => 0
  field :fans, :type => Array, :default => []


  embeds_many :posts

  class << self
    def serialize_from_session(key, salt)
      record = to_adapter.get(key[0]["$oid"])
      record if record && record.authenticatable_salt == salt
    end
  end

  def has_role?(role)

    case role
      when :admin then admin?
      when :wiki_editor then wiki_editor?
      when :site_editor then site_editor?
      when :member then self.state == STATE[:normal]
      else false
    end
  end

  # 是否有 Wiki 维护权限
  def wiki_editor?
    self.admin? or self.verified == true
  end

  # 是否是管理员
  def admin?
    logger.info "admin =====================  admin"

    Setting.admin_emails.include?(self.email)
    
  end



  STATE = {
    # 软删除
    deleted: -1,
    # 正常
    normal: 1,
    # 屏蔽
    blocked: 2,
  }



  def blocked?
    return self.state == STATE[:blocked]
  end

  def deleted?
    return self.state == STATE[:deleted]
  end




end
