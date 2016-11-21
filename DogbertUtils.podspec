Pod::Spec.new do |spec|
  spec.name         = 'DogbertUtils'
  spec.version      = '1.0.1'
  spec.summary      = 'Utils pod'
  spec.license      = "None"
  spec.homepage     = 'https://github.com/StDogbert/DogbertUtils'
  spec.source       = { :git => 'https://github.com/StDogbert/DogbertUtils.git'}
  spec.authors = {
    'Alexandr Barenboym' => 'alexandr.barenboym@gmail.com'
  }
  # spec.requires_arc = true
  spec.default_subspec = 'Alamofire_SwiftyJSON3_0'
  
  spec.subspec 'Alamofire_SwiftyJSON3_0' do |asj3|
    asj3.dependency 'Alamofire'
    asj3.dependency 'SwiftyJSON'
    asj3.source_files = 
      'asj3.0/*.{swift}', 
      'asj3.0/**/*.{swift}'
  end
end
