module ApplicationHelper
  
    def long_date
     l Time.now, :format => :long, :locale => :pt
    end
  
    def javascript_init_menu
      javascript_tag 'anylinkmenu.init("menuanchorclass")'
    end
  
end
