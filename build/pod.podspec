Pod::Spec.new do |spec|
  spec.name         = 'GContractNet'
  spec.version      = '{{.Version}}'
  spec.license      = { :type => 'GNU Lesser General Public License, Version 3.0' }
  spec.homepage     = 'https://github.com/ContractNet/go-ContractNet'
  spec.authors      = { {{range .Contributors}}
		'{{.Name}}' => '{{.Email}}',{{end}}
	}
  spec.summary      = 'iOS Ethereum Client'
  spec.source       = { :git => 'https://github.com/ContractNet/go-ContractNet.git', :commit => '{{.Commit}}' }

	spec.platform = :ios
  spec.ios.deployment_target  = '9.0'
	spec.ios.vendored_frameworks = 'Frameworks/GContractNet.framework'

	spec.prepare_command = <<-CMD
    curl https://gContractNetstore.blob.core.windows.net/builds/{{.Archive}}.tar.gz | tar -xvz
    mkdir Frameworks
    mv {{.Archive}}/GContractNet.framework Frameworks
    rm -rf {{.Archive}}
  CMD
end
