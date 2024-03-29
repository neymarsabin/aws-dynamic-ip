require 'aws-sdk-ec2'
class AwsDynamicIp
  def self.fetch_ips(env, role)
    client = ::Aws::EC2::Client.new(region: 'us-west-2' || ENV['AWS_REGION'])
    ec2 = ::Aws::EC2::Resource.new(client: client)
    ips = []
    ec2.instances({ filters:
                      [
                        { name: 'tag:env', values: [env.to_s]},
                        { name: 'tag:role', values: [role]},
                        { name: 'instance-state-name', values: ['running']}
                      ]
                  }).each do |instance|
      if instance.public_ip_address
        ips << instance.public_ip_address
      else
        ips << instance.private_ip_address
      end
    end

    puts "Fetched ips for #{env}:#{role} :: #{ips.join(',')}"
    return ips
  end
end
