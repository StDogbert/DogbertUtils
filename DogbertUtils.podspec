Pod::Spec.new do |spec|
  spec.name         = 'DogbertUtils'
  spec.version      = '1.0.0'
  spec.summary      = 'Utils pod'
  spec.license      = "None"
  spec.author = {
    'Alexandr Barenboym' => 'alexandr.barenboym@gmail.com'
  }
  spec.source = {
    :git => 'https://github.com/StDogbert/DogbertUtils.git',
    :tag => spec.version.to_s
  }
  # spec.requires_arc = true
  spec.default_subspec = 'Empty'
  
  spec.subspec 'Empty' do |empty|
    # empty subspec for default
  end
  
  spec.subspec 'Alamofire_SwiftyJSON3_0' do |ASJ3|
    ASJ3.dependency 'Alamofire', '~> 3.0'
    ASJ3.dependency 'SwiftyJSON', '~2.3'
    ASJ3.source_files = 'Alamofire_SwiftyJSON3_0/**/*.{swift}'
  end
end
