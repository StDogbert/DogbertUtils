Pod::Spec.new do |spec|
  spec.name         = 'DogbertUtils'
  spec.version      = '1.0.0'
  spec.summary      = 'Utils pod'
  spec.license      = "None"
  spec.author = {
    'Alexandr Barenboym' => 'alexandr.barenboym@gmail.com'
  }
  spec.source = {
    :git => 'https://github.com/StDogbert/DogbertUtils.git'
  }
  # spec.requires_arc = true
  spec.default_subspec = 'Empty'
  
  spec.subspec 'Empty' do |empty|
    # empty subspec for default
  end
  
  spec.subspec 'Alamofire-SwiftyJSON3_0' do |Alamofire-SwiftyJSON3_0|
    Alamofire-SwiftyJSON3_0.dependency 'Alamofire', '~> 3.0'
    Alamofire-SwiftyJSON3_0.dependency 'SwiftyJSON', '~2.3'
    Alamofire-SwiftyJSON3_0.source_files = 'Alamofire-SwiftyJSON3_0/**/*.{swift}'
  end
end
