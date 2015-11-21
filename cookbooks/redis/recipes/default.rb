# redis

# install redis
bash "redis" do
  cwd "/home/vagrant/github/redis"
  code <<-EOF
    make clean &&
    make &&
    make install
  EOF
end


directory "/var/lib/redis/" do
  owner "vagrant"
  group "vagrant"
  mode 0755
end


# redis 6379
template "/etc/init/redis.conf" do
  source "init.redis.conf.erb"
  variables :port => 6379,
            :chdir => "/var/lib/redis"
end

template "/var/lib/redis/redis.conf" do
  source "redis.conf.erb"
  variables :port => 6379
end

service "redis" do
  action :start
end


# cluster
8000.upto(8002) do |port|
  template "/etc/init/redis#{port}.conf" do
    source "init.redis.conf.erb"
    variables :port => port,
              :chdir => "/var/lib/redis/#{port}"
  end

  directory "/var/lib/redis/#{port}" do
    owner "vagrant"
    group "vagrant"
    mode 0755
  end

  template "/var/lib/redis/#{port}/redis.conf" do
    source "redis.conf.erb"
    variables :port => port,
              :cluster => true
  end

  service "redis#{port}" do
    action :start
  end
end
