define :install_ruby do
  ruby = params[:name]

  # use full path to rvm as rvm path not sourced in profile

  bash "install_#{ruby.gsub(/\W/, '_').downcase}" do
    code <<-EOH
    /usr/local/rvm/bin/rvm install #{ruby}
    /usr/local/rvm/bin/rvm --create #{ruby}@global exec gem install bundler god chef --no-rdoc --no-ri
    EOH
    not_if { `/usr/local/rvm/bin/rvm list`.include? ruby }
  end
end

