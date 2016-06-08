class Style < ActiveRecord::Base
  has_many :varients
  has_attached_file :avatar,
                    :storage => :s3,
                    styles: { medium: "300x300>", thumb: "100x100>" },
                    default_url: "/images/:style/missing.png",
                    url: ":s3_domain_url",
                    path: "/:class/:attachment/:id_partition/:style/:filename",
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  def s3_credentials
    {:bucket => ENV['FOOTWEAR_APP_BUCKET'], :access_key_id => ENV['S3_ACCESS_KEY_ID'], :secret_access_key => ENV['S3_SECRET_ACCESS_KEY']}
  end
end
