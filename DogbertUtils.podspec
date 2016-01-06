Pod::Spec.new do |spec|
  spec.name         = 'DogbertUtils'
  spec.version      = '1.0.0'
  spec.summary      = 'Utils pod'
  spec.license      = "None"
  spec.author = {
    'Alexandr Barenboym' => 'alexandr.barenboym@gmail.com'
  }
  # spec.requires_arc = true
  spec.default_subspec = 'Empty'
  
  spec.subspec 'Empty' do |empty|
    # empty subspec for default
  end
  
  spec.subspec 'Alamofire_SwiftyJSON3_0' do |asj3|
    asj3.dependency 'Alamofire', '~> 3.0'
    asj3.dependency 'SwiftyJSON', '~> 2.3'
    asj3.source_files = 
      'asj3.0/*.{swift}', 
      'asj3.0/**/*.{swift}'
  end
end
