# Work
# catalogue_id:integer
# name:string
# top_work:boolean

class Work < ApplicationRecord

  has_attached_file :image,
                    styles: { medium: "300x300>", thumb: "100x100>" },
                    default_url: "/images/:style/missing.png",
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
                    s3_region: ENV['AWS_REGION'],
                    s3_host_name: "s3-#{ENV['AWS_REGION']}.amazonaws.com"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  belongs_to :catalogue

end
